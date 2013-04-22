-- | Defines the 'Key' and 'Button' types, along with a list of
-- constants of those types.

module Test.Robot.Types
    (
      -- * Types
      Key()  -- Hide implementation
    , Button()

      -- ** Creating
      -- $custom
    , customKey
    , customButton

      -- ** Extracting
    , rawKey
    , rawButton

      -- * Constants
      -- ** Buttons
    , leftButton, middleButton, rightButton
    , scrollUp, scrollDown, scrollLeft, scrollRight
    , backButton, forwardButton

    , module Test.Robot.Types.Keys

    ) where

import Graphics.XHB

import Test.Robot.Types.Core
import Test.Robot.Types.Keys

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

leftButton, middleButton, rightButton :: Button
scrollUp, scrollDown, scrollLeft, scrollRight :: Button
backButton, forwardButton :: Button
[leftButton, middleButton, rightButton,
    scrollUp, scrollDown, scrollLeft, scrollRight,
    backButton, forwardButton] = map Button [1..9]
