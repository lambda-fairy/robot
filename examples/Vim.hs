-- | Do some funny things with the keyboard.

import Control.Monad (replicateM_)
import Test.Robot

main = runRobot $ do

    pause

    -- Let's open Vim!
    mapM_ t [_V, _I, _M]
    t _Return

    pause

    -- Enter some text...
    t _I; sleep 1
    _Shift `hold` do
        mapM_ t [_D, _U, _C, _K, _S]
    t _Escape

    pause

    -- Undo and redo
    replicateM_ 3 $ do
        t _U
        t [_Ctrl, _R]  -- Alternatively: _Ctrl `hold` tap _R

    pause

    -- Quit
    _Shift `hold` do
        t _Z
        t _Q

  where
    t k = sleep 0.25 >> tap k
    pause = sleep 2
