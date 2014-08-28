-- | Functions for managing connections manually.

module Test.Robot.Connection
    (
      -- * Managing connections
      -- $connections
      runRobotWith
    , connect

    ) where


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
