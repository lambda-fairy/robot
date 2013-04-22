module Test.Robot.Types.Core where

import Graphics.XHB (BUTTON, KEYSYM)

-- | A key on the keyboard.
newtype Key = Key
    { -- | Retrieve the internal identifier for this key.
      rawKey :: KEYSYM }
    deriving (Eq, Ord, Read, Show)

-- | A mouse button or scroll wheel.
--
-- Note that the scroll wheel is treated as two separate buttons: one
-- scrolling up, and one scrolling down.
newtype Button = Button
    { -- | Retrieve the internal identifier for this button.
      rawButton :: BUTTON }
    deriving (Eq, Ord, Read, Show)
