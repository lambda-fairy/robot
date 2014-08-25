-- | Extra functions for advanced users.

module Test.Robot.Advanced
    (
      -- * Managing connections
      -- $connections
      runRobotWith
    , connect

      -- * Re-exports
    , module Test.Robot

    ) where


import Test.Robot
import Test.Robot.Internal


-- $connections
--
-- 'runRobot' opens a new connection every time it is called. If you
-- call it too many times, it will exhaust the connection pool, causing
-- a \"maximum number of clients reached\" error.
--
-- This module lets you avoid this error by handling the connection
-- manually.
--
-- Example:
--
-- @
-- main = do
--     Just conn <- 'connect'
--     replicateM_ 500 $ do
--         'runRobotWith' conn $ tap _A
--         putStrLn \"Ducks!\"
-- @
--
--
