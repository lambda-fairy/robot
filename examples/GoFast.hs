-- | Press the spacebar repeatedly, really really fast.
--
-- 1. Go to <http://mixermike622.deviantart.com/art/GO-FAST-287788805>
-- 2. Run this program
-- 3. ???
-- 4. Profit

import Control.Monad (forever)
import Test.Robot

main = runRobot . forever $ do
    sleep 0.1
    tap _Space
