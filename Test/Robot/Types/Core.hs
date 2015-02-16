module Test.Robot.Types.Core where

import Graphics.XHB (BUTTON, KEYSYM)

-- | Either a key on the keyboard, or a mouse button or scroll wheel.
--
-- Note that the scroll wheel is treated as two mouse buttons: one
-- scrolling up, and one scrolling down.
data Switch
    = Key KEYSYM
    | Button BUTTON
    deriving (Eq, Ord, Read, Show)
