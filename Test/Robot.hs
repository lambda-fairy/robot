-- | The main Robot interface.

module Test.Robot
    (
      -- * Running your robot
      Robot()  -- hide implementation
    , runRobot

      -- * Key and button constants
    , module Test.Robot.Types

      -- * Doing things
    , Pressable(press, release, hold)
    , moveBy
    , moveTo
    , tap

      -- * Miscellaneous
    , sleep
    , module Test.Robot.Connection

    ) where


import Control.Applicative
import Control.Concurrent (threadDelay)
import Control.Monad.Catch
import Control.Monad.IO.Class

import Test.Robot.Connection
import Test.Robot.Internal
import Test.Robot.Types


infixr 4 `hold`  -- Allow e.g. xs ++ ys `hold` m


-- | Represents things that can be pressed: either a single 'Switch' or
-- a list of 'Switch'es.
class Pressable x where

    -- | Press a key or button.
    press :: x -> Robot ()

    -- | Release a key or button.
    release :: x -> Robot ()

    -- | @hold x act@ holds down @x@ while executing @act@. It is
    -- equivalent to:
    --
    -- @
    -- press x >> act >> release x
    -- @
    --
    -- except @hold@ ensures that the argument is released in the event
    -- of an exception.
    --
    hold :: x -> Robot a -> Robot a
    hold = bracket_ <$> press <*> release

instance Pressable Switch where
    press = switch True
    release = switch False

-- | Press items from left-to-right, but release from right-to-left.
--
-- This behavior ensures the following equivalence holds:
--
-- @
-- press xs >> act >> release xs
--   === xs \`hold\` act
--   === x1 \`hold\` x2 \`hold\` ... xn \`hold\` act
-- @
--
instance Pressable x => Pressable [x] where
    press = mapM_ press
    release = mapM_ release . reverse

    hold = foldr (.) id . map hold
    --hold [] = id
    --hold (x:xs) = hold x . hold xs


-- | Move the pointer by an offset.
moveBy :: Int -> Int -> Robot ()
moveBy = motion True

-- | Move the pointer to a point on the screen.
moveTo :: Int -> Int -> Robot ()
moveTo = motion False


-- | Press the argument, then release it.
--
-- Note that the underlying events are fired very quickly; much faster
-- than some applications (such as Xmonad) can handle. If this becomes
-- an issue, you may introduce a delay using 'sleep':
--
-- @
-- slowTap x = x \`hold\` sleep 0.1
-- @
--
tap :: Pressable x => x -> Robot ()
tap = (`hold` return ())


-- | Do nothing for the specified number of seconds.
sleep :: Rational -> Robot ()
sleep = liftIO . threadDelay . round . (* 1000000)
