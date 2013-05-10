{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- | Miscellaneous low-level functions. You should rarely need to use
-- these directly.

module Test.Robot.Internal
    (
      -- * The Robot monad
      Robot(..)
    , runRobot
    , runRobotWithConnection
    , mkRobot
    , mkRobot'

      -- * Exception safety
    , bracketRobot_

      -- * Synthesizing events
    , keyboard
    , button
    , motion
    , releaseAll

    ) where


import Control.Applicative
import Control.Exception (bracket_, finally)
import Control.Monad.IO.Class
import Control.Monad.Trans.Reader
import Data.Map (Map)
import qualified Data.Map as M

import Graphics.XHB

import qualified Test.Robot.Internal.XTest as X
import Test.Robot.Types


-- | The Robot monad: a reader monad over IO.
newtype Robot a = Robot { unRobot :: ReaderT (Connection, Map KEYSYM KEYCODE) IO a }
    deriving (Functor, Applicative, Monad, MonadIO)

-- | Run the robot, connecting to the display automatically.
runRobot :: Robot a -> IO a
runRobot m = do
    Just c <- connect
    runRobotWithConnection m c

-- | Run the robot using an existing connection.
runRobotWithConnection :: Robot a -> Connection -> IO a
runRobotWithConnection (Robot m) c = do
    keymap <- X.getKeysymMap c
    runReaderT m (c, keymap) `finally` X.releaseAll c

mkRobot :: ((Connection, Map KEYSYM KEYCODE) -> IO a) -> Robot a
mkRobot = Robot . ReaderT

mkRobot' :: (Connection -> IO a) -> Robot a
mkRobot' = mkRobot . (. fst)


bracketRobot_ :: Robot a -> Robot z -> Robot r -> Robot r
bracketRobot_ (Robot before) (Robot after) (Robot middle)
    = mkRobot $ \env -> let run = flip runReaderT env
                        in bracket_ (run before) (run after) (run middle)


keyboard :: Bool -> Key -> Robot ()
keyboard press key = mkRobot $ \(c, keymap) -> do
    case M.lookup (rawKey key) keymap of
        Nothing -> error $ "Unknown keysym: " ++ show (rawKey key)
        Just keycode -> X.keyboard c press keycode

button :: Bool -> Button -> Robot ()
button press butt {- LOL -} = mkRobot' $ \c ->
    X.button c press (rawButton butt)

motion :: Bool -> Int -> Int -> Robot ()
motion press x y = mkRobot' $ \c ->
    X.motion c press (clipIntegral x, clipIntegral y)

-- | @clipIntegral x :: T@ converts the value @x@ to type @T@.
-- If the argument does not fit in @T@, it is clipped, rather than
-- wrapping around as with 'fromIntegral'.
clipIntegral :: (Integral a, Integral b, Ord a, Bounded b) => a -> b
clipIntegral = narrow . widen

widen :: Integral a => a -> Integer
widen = fromIntegral

narrow :: (Integral b, Bounded b) => Integer -> b
narrow x = result
  where
    result
      | x < fromIntegral (minBound `asTypeOf` result) = minBound
      | x > fromIntegral (maxBound `asTypeOf` result) = maxBound
      | otherwise = fromIntegral x


-- | Release all the keys and buttons, in case some were left held down.
-- This is called automatically before 'runRobot' returns.
releaseAll :: Robot ()
releaseAll = mkRobot' $ \c -> X.releaseAll c
