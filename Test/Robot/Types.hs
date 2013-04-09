-- | Defines the 'Key' and 'Button' types, along with a list of
-- constants of those types.

module Test.Robot.Types
    (
      -- * Keys and buttons
      Key()  -- Hide implementation
    , Button()

      -- ** Defining your own
      -- $custom
    , customKey
    , customButton

      -- ** Internals
    , rawKey
    , rawButton

      -- * Constants
      -- ** Buttons
    , leftButton, rightButton, middleButton
    , scrollUp, scrollDown, scrollLeft, scrollRight
    , backButton, forwardButton

      -- ** Keys

      {- BIG EMPTY SPACE WHERE LOTS OF DEFINITIONS SHOULD BE -}
    ) where

import Graphics.XHB

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

-- $custom
-- These two functions let you define your own keys and buttons.
--
-- 'customKey' requires a magic number (/keysym/) as its argument. On
-- most Unix systems, you can look up common keysyms in the file
-- @\/usr\/include\/X11\/keysymdef.h@.
--
-- For example, the pound sign @£@ is listed as:
--
-- > #define XK_sterling                      0x00a3  /* U+00A3 POUND SIGN */
--
-- so to input this key, we use @customKey 0x00a3@.
--
-- Note: this feature only works if the key actually exists on your
-- keyboard. If not, then using the result will raise an exception.

customKey :: KEYSYM -> Key
customKey = Key

customButton :: BUTTON -> Button
customButton = Button

leftButton, rightButton, middleButton,
    scrollUp, scrollDown, scrollLeft, scrollRight,
    backButton, forwardButton :: Button
[leftButton, rightButton, middleButton,
    scrollUp, scrollDown, scrollLeft, scrollRight,
    backButton, forwardButton] = map Button [1..9]
