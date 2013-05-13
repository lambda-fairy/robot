-- | Low-level wrappers around the XTest protocol.

module Test.Robot.Internal.XTest
    (
    -- * XTest primitives
      keyboard
    , button
    , motion

    -- * Utility functions
    , getKeysymMap

    ) where

import Control.Arrow (second)
import Control.Applicative (liftA2)
import Control.Monad ((>=>))
import Data.List (unfoldr)
import Data.Map (Map)
import qualified Data.Map as M
import Data.Tuple (swap)
import Data.Int (Int16)

import Graphics.XHB
import Graphics.XHB.Gen.Test


keyboard :: Connection -> Bool -> KEYCODE -> IO ()
keyboard c press keycode =
    let eventType = if press then 2 else 3
        req = MkFakeInput eventType keycode 0 noWindow 0 0 0
    in fakeInput c req


button :: Connection -> Bool -> BUTTON -> IO ()
button c press butt =
    let eventType = if press then 4 else 5
        req = MkFakeInput eventType butt 0 noWindow 0 0 0
    in fakeInput c req


motion :: Connection -> Bool -> (Int16, Int16) -> IO ()
motion c relative (x, y) =
    let eventType = 6
        isRelative = if relative then 1 else 0
        req = MkFakeInput eventType isRelative 0 noWindow
                -- See note [fromIntegral]
                (fromIntegral x) (fromIntegral y) 0
    in fakeInput c req

{-

Note [fromIntegral]
~~~~~~~~~~~~~~~~~~~

In xcb-proto < 1.7, the x and y coordinates are declared incorrectly as
Word16, instead of Int16 as they should be. As a temporary workaround,
we use fromIntegral to coerce the values.

See <http://cgit.freedesktop.org/~keithp/xcb-proto/commit/src/xtest.xml?id=f3ae971edce37ad96ef0b8a6059c1f853e88fcf3>

 -}


noWindow :: WINDOW
noWindow = fromXid xidNone


-- | Return a structure mapping each keycode to its keysyms.
getKeyboardMap :: Connection -> IO (Map KEYCODE [KEYSYM])
getKeyboardMap c = do
    let (low, high) = keycodeRange c
    MkGetKeyboardMappingReply
        { keysyms_per_keycode_GetKeyboardMappingReply = blockSize
        , keysyms_GetKeyboardMappingReply = rawKeysyms }
            <- getKeyboardMapping c low (high-low+1) >>= getReply'
    return . M.fromList $ zip [low..high]
                                (chunksOf (fromIntegral blockSize) rawKeysyms)


-- | Like 'getReply', but calls @error@ instead of returning @Left@.
getReply' :: Receipt a -> IO a
getReply' = getReply >=> either (error . show) return


-- | Split the input list into chunks of size @k@. The last chunk may be
-- shorter than the other chunks, depending on the length of the input.
-- Exammples:
--
-- > chunksOf 2 [1..6] == [[1, 2], [3, 4], [5, 6]]
-- > chunksOf 3 "Hello, world!" == ["Hel", "lo,", " wo", "rld", "!"]
--
chunksOf :: Int -> [a] -> [[a]]
chunksOf k = unfoldr $ \xs -> case xs of
    [] -> Nothing
    _  -> Just (splitAt k xs)


-- | Return a structure mapping keysyms to their keycode.
getKeysymMap :: Connection -> IO (Map KEYSYM KEYCODE)
getKeysymMap = fmap flipTable . getKeyboardMap


flipTable :: Map KEYCODE [KEYSYM] -> Map KEYSYM KEYCODE
flipTable
    = M.fromList
    . map swap
    . concatMap expandEntry
    . removeZeroes
    . M.toList
  where
    removeZeroes = map (second (filter (/= 0)))

    expandEntry :: (a, [b]) -> [(a, b)]
    expandEntry (x, ys) = zip (repeat x) ys


keycodeRange :: Connection -> (KEYCODE, KEYCODE)
keycodeRange
    = liftA2 (,) min_keycode_Setup max_keycode_Setup . connectionSetup
