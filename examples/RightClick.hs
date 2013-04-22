-- | Open the right-click menu, then use the keyboard to select the
-- first entry.

import Test.Robot

main = runRobot $ mapM_ (>> sleep 0.25)
                        [tap rightButton, tap _Down, tap _Return]
