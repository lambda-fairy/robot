{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- | Miscellaneous low-level functions. You should rarely need to use
-- these directly.

module Test.Robot.Internal
    (
      -- * The Robot monad
      Robot(..)
    , runRobot
    , runRobotWith
    , connect
    , mkRobot
    , mkRobot'

      -- * Synthesizing events
    , keyboard
    , button
    , motion

    ) where


import Control.Applicative
import Control.Monad.Catch
import Control.Monad.IO.Class
import Control.Monad.Trans.Reader
import Data.Map (Map)
import qualified Data.Map as M

import Graphics.XHB hiding (connect)
import qualified Graphics.XHB as X

import qualified Test.Robot.Internal.XTest as X
import Test.Robot.Types


-- | A @Robot@ is a program that interacts with the GUI.
--
-- Use 'runRobot' to execute your Robot, and 'liftIO' to perform
-- arbitrary I/O.
--
newtype Robot a = Robot { unRobot :: ReaderT (Connection, Map KEYSYM KEYCODE) IO a }
    deriving (Functor, Applicative, Monad, MonadIO, MonadCatch, MonadMask, MonadThrow)

-- | Run the robot, connecting to the display automatically.
runRobot :: Robot a -> IO a
runRobot m = do
    c <- connect
    runRobotWith c m

-- | Run the robot using an existing connection.
runRobotWith :: Connection -> Robot a -> IO a
runRobotWith c (Robot m) = do
    keymap <- X.getKeysymMap c
    runReaderT m (c, keymap)

-- | Connect to the X11 server.
connect :: IO Connection
connect = do
    Just c <- X.connect
    return c

mkRobot :: ((Connection, Map KEYSYM KEYCODE) -> IO a) -> Robot a
mkRobot = Robot . ReaderT

mkRobot' :: (Connection -> IO a) -> Robot a
mkRobot' = mkRobot . (. fst)


keyboard :: Bool -> Key -> Robot ()
keyboard press key = mkRobot $ \(c, keymap) -> do
    case M.lookup (rawKey key) keymap of
        Nothing -> error $ "keysym " ++ show (rawKey key)
                            ++ " does not exist on keyboard layout"
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
