-- | The main Robot interface.

module Test.Robot
    (
      -- * Running your robot
      Robot()  -- hide implementation
    , runRobot
    , runRobotWithConnection

      -- * Key and button constants
    , module Test.Robot.Types

      -- * Doing things
      -- ** Basic operations
    , Pressable(press, release)
    , moveBy
    , moveTo
      -- ** Derived operations
    , hold
    , tap

      -- * Fancy utilities
    , sleep

    ) where


import Control.Applicative
import Control.Concurrent (threadDelay)
import Control.Monad.IO.Class

import Test.Robot.Internal
import Test.Robot.Types


-- | Represents things that can be pressed: either a key on a keyboard
-- or a button on a mouse.
class Pressable x where

    -- | Press a key or button.
    press :: x -> Robot ()

    -- | Release a key or button.
    release :: x -> Robot ()

instance Pressable Key where
    press = keyboard True
    release = keyboard False

instance Pressable Button where
    press = button True
    release = button False


-- | Move the pointer by an offset.
moveBy :: Int -> Int -> Robot ()
moveBy = motion True

-- | Move the pointer to a point on the screen.
moveTo :: Int -> Int -> Robot ()
moveTo = motion False


-- | @hold x act@ holds down @x@ while executing @act@. It is equivalent
-- to the code:
--
-- @
-- press x
-- act
-- release x
-- @
--
-- For example, you type some text in ALL CAPS using:
--
-- @
-- hold _Shift $ mapM_ tap [_D, _U, _C, _K, _S]
-- @
--
hold :: Pressable x => x -> Robot a -> Robot a
hold = bracketRobot_ <$> press <*> release

-- | Press the argument, then release it.
tap :: Pressable x => x -> Robot ()
tap = (`hold` return ())


-- | Do nothing for the specified number of seconds.
sleep :: Rational -> Robot ()
sleep = liftIO . threadDelay . round . (* 1000000)
