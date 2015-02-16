-- | Defines the 'Switch' type, along with some constants and utilities.

module Test.Robot.Types
    (
      -- * Types
      Switch(..)
      -- ** Defining your own keys
      -- $keys

      -- * Constants
      -- ** Buttons
    , leftButton, middleButton, rightButton
    , scrollUp, scrollDown, scrollLeft, scrollRight
    , backButton, forwardButton

    , module Test.Robot.Types.Keys

    ) where

import Test.Robot.Types.Core
import Test.Robot.Types.Keys

-- $keys
-- The 'Key' constructor requires a magic number (/keysym/) as its
-- argument. On most Unix systems, you can look up common keysyms in the
-- file @\/usr\/include\/X11\/keysymdef.h@.
--
-- For example, the pound sign @£@ is listed as:
--
-- > #define XK_sterling                      0x00a3  /* U+00A3 POUND SIGN */
--
-- so to input this key, we use @Key 0x00a3@.
--
-- Note: this feature only works if the key actually exists on your
-- keyboard. If not, then using the result will raise an exception.

leftButton, middleButton, rightButton :: Switch
scrollUp, scrollDown, scrollLeft, scrollRight :: Switch
backButton, forwardButton :: Switch
[leftButton, middleButton, rightButton,
    scrollUp, scrollDown, scrollLeft, scrollRight,
    backButton, forwardButton] = map Button [1..9]
