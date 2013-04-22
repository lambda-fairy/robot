{-# OPTIONS_GHC -fno-warn-missing-signatures #-}

-- | This module is automatically generated from the file @keys.txt@,
-- and should not be edited directly. If you want to add a keysym, refer
-- to that file instead.

module Test.Robot.Types.Keys
    (
      -- ** Control sequences
      _Backspace
    , _Tab
    , _LineFeed
    , _Clear
    , _Return
    , _Pause
    , _ScrollLock
    , _SysReq
    , _Escape
    , _Delete

      -- ** Cursor control and motion
    , _Home
    , _Left
    , _Up
    , _Right
    , _Down
    , _Prior
    , _PageUp
    , _Next
    , _PageDown
    , _End
    , _Begin

      -- ** Miscellaneous functions
    , _Select
    , _Print
    , _Execute
    , _Insert
    , _Undo
    , _Redo
    , _Menu
    , _Find
    , _Cancel
    , _Help
    , _Break
    , _ModeSwitch
    , _ScriptSwitch
    , _NumLock

      -- ** Keypad functions
    , _KP_Space
    , _KP_Tab
    , _KP_Enter
    , _KP_F1
    , _KP_F2
    , _KP_F3
    , _KP_F4
    , _KP_Home
    , _KP_Left
    , _KP_Up
    , _KP_Right
    , _KP_Down
    , _KP_Prior
    , _KP_PageUp
    , _KP_Next
    , _KP_PageDown
    , _KP_End
    , _KP_Begin
    , _KP_Insert
    , _KP_Delete
    , _KP_Multiply
    , _KP_Add
    , _KP_Separator
    , _KP_Subtract
    , _KP_Decimal
    , _KP_Divide
    , _KP_Equal

      -- ** Keypad numbers
    , _KP_0
    , _KP_1
    , _KP_2
    , _KP_3
    , _KP_4
    , _KP_5
    , _KP_6
    , _KP_7
    , _KP_8
    , _KP_9

      -- ** Function keys
    , _F1
    , _F2
    , _F3
    , _F4
    , _F5
    , _F6
    , _F7
    , _F8
    , _F9
    , _F10
    , _F11
    , _F12
    , _F13
    , _F14
    , _F15
    , _F16
    , _F17
    , _F18
    , _F19

      -- ** Modifiers
    , _Shift
    , _Shift_L
    , _Shift_R
    , _Ctrl
    , _Control
    , _Control_L
    , _Control_R
    , _CapsLock
    , _ShiftLock

      -- ** More modifiers
    , _Meta
    , _Meta_L
    , _Meta_R
    , _Alt
    , _Alt_L
    , _Alt_R
    , _Super
    , _Super_L
    , _Super_R
    , _Hyper
    , _Hyper_L
    , _Hyper_R

      -- ** Letters, numbers and symbols
    , _Space
    , _Exclamation
    , _Quotation
    , _NumberSign
    , _Dollar
    , _Percent
    , _Ampersand
    , _Apostrophe
    , _ParenLeft
    , _ParenRight
    , _Asterisk
    , _Plus
    , _Comma
    , _Minus
    , _Period
    , _Slash
    , _0
    , _1
    , _2
    , _3
    , _4
    , _5
    , _6
    , _7
    , _8
    , _9
    , _Colon
    , _Semicolon
    , _Less
    , _Equal
    , _Greater
    , _Question
    , _At
    , _A
    , _B
    , _C
    , _D
    , _E
    , _F
    , _G
    , _H
    , _I
    , _J
    , _K
    , _L
    , _M
    , _N
    , _O
    , _P
    , _Q
    , _R
    , _S
    , _T
    , _U
    , _V
    , _W
    , _X
    , _Y
    , _Z
    , _BracketLeft
    , _Backslash
    , _BracketRight
    , _Circumflex
    , _Underscore
    , _Grave
    , _BraceLeft
    , _Bar
    , _BraceRight
    , _Tilde

    ) where

import Test.Robot.Types.Core

_Backspace :: Key
_Backspace                     = Key 0xff08
_Tab :: Key
_Tab                           = Key 0xff09
_LineFeed :: Key
_LineFeed                      = Key 0xff0a
_Clear :: Key
_Clear                         = Key 0xff0b
_Return :: Key
_Return                        = Key 0xff0d
_Pause :: Key
_Pause                         = Key 0xff13
_ScrollLock :: Key
_ScrollLock                    = Key 0xff14
_SysReq :: Key
_SysReq                        = Key 0xff15
_Escape :: Key
_Escape                        = Key 0xff1b
_Delete :: Key
_Delete                        = Key 0xffff

_Home :: Key
_Home                          = Key 0xff50
_Left :: Key
_Left                          = Key 0xff51
_Up :: Key
_Up                            = Key 0xff52
_Right :: Key
_Right                         = Key 0xff53
_Down :: Key
_Down                          = Key 0xff54
_Prior, _PageUp :: Key
_Prior                         = Key 0xff55
_PageUp                        = Key 0xff55
_Next, _PageDown :: Key
_Next                          = Key 0xff56
_PageDown                      = Key 0xff56
_End :: Key
_End                           = Key 0xff57
_Begin :: Key
_Begin                         = Key 0xff58

_Select :: Key
_Select                        = Key 0xff60
_Print :: Key
_Print                         = Key 0xff61
_Execute :: Key
_Execute                       = Key 0xff62
_Insert :: Key
_Insert                        = Key 0xff63
_Undo :: Key
_Undo                          = Key 0xff65
_Redo :: Key
_Redo                          = Key 0xff66
_Menu :: Key
_Menu                          = Key 0xff67
_Find :: Key
_Find                          = Key 0xff68
_Cancel :: Key
_Cancel                        = Key 0xff69
_Help :: Key
_Help                          = Key 0xff6a
_Break :: Key
_Break                         = Key 0xff6b
_ModeSwitch, _ScriptSwitch :: Key
_ModeSwitch                    = Key 0xff7e
_ScriptSwitch                  = Key 0xff7e
_NumLock :: Key
_NumLock                       = Key 0xff7f

_KP_Space :: Key
_KP_Space                      = Key 0xff80
_KP_Tab :: Key
_KP_Tab                        = Key 0xff89
_KP_Enter :: Key
_KP_Enter                      = Key 0xff8d
_KP_F1 :: Key
_KP_F1                         = Key 0xff91
_KP_F2 :: Key
_KP_F2                         = Key 0xff92
_KP_F3 :: Key
_KP_F3                         = Key 0xff93
_KP_F4 :: Key
_KP_F4                         = Key 0xff94
_KP_Home :: Key
_KP_Home                       = Key 0xff95
_KP_Left :: Key
_KP_Left                       = Key 0xff96
_KP_Up :: Key
_KP_Up                         = Key 0xff97
_KP_Right :: Key
_KP_Right                      = Key 0xff98
_KP_Down :: Key
_KP_Down                       = Key 0xff99
_KP_Prior, _KP_PageUp :: Key
_KP_Prior                      = Key 0xff9a
_KP_PageUp                     = Key 0xff9a
_KP_Next, _KP_PageDown :: Key
_KP_Next                       = Key 0xff9b
_KP_PageDown                   = Key 0xff9b
_KP_End :: Key
_KP_End                        = Key 0xff9c
_KP_Begin :: Key
_KP_Begin                      = Key 0xff9d
_KP_Insert :: Key
_KP_Insert                     = Key 0xff9e
_KP_Delete :: Key
_KP_Delete                     = Key 0xff9f
_KP_Multiply :: Key
_KP_Multiply                   = Key 0xffaa
_KP_Add :: Key
_KP_Add                        = Key 0xffab
_KP_Separator :: Key
_KP_Separator                  = Key 0xffac
_KP_Subtract :: Key
_KP_Subtract                   = Key 0xffad
_KP_Decimal :: Key
_KP_Decimal                    = Key 0xffae
_KP_Divide :: Key
_KP_Divide                     = Key 0xffaf
_KP_Equal :: Key
_KP_Equal                      = Key 0xffbd

_KP_0 :: Key
_KP_0                          = Key 0xffb0
_KP_1 :: Key
_KP_1                          = Key 0xffb1
_KP_2 :: Key
_KP_2                          = Key 0xffb2
_KP_3 :: Key
_KP_3                          = Key 0xffb3
_KP_4 :: Key
_KP_4                          = Key 0xffb4
_KP_5 :: Key
_KP_5                          = Key 0xffb5
_KP_6 :: Key
_KP_6                          = Key 0xffb6
_KP_7 :: Key
_KP_7                          = Key 0xffb7
_KP_8 :: Key
_KP_8                          = Key 0xffb8
_KP_9 :: Key
_KP_9                          = Key 0xffb9

_F1 :: Key
_F1                            = Key 0xffbe
_F2 :: Key
_F2                            = Key 0xffbf
_F3 :: Key
_F3                            = Key 0xffc0
_F4 :: Key
_F4                            = Key 0xffc1
_F5 :: Key
_F5                            = Key 0xffc2
_F6 :: Key
_F6                            = Key 0xffc3
_F7 :: Key
_F7                            = Key 0xffc4
_F8 :: Key
_F8                            = Key 0xffc5
_F9 :: Key
_F9                            = Key 0xffc6
_F10 :: Key
_F10                           = Key 0xffc7
_F11 :: Key
_F11                           = Key 0xffc8
_F12 :: Key
_F12                           = Key 0xffc9
_F13 :: Key
_F13                           = Key 0xffca
_F14 :: Key
_F14                           = Key 0xffcb
_F15 :: Key
_F15                           = Key 0xffcc
_F16 :: Key
_F16                           = Key 0xffcd
_F17 :: Key
_F17                           = Key 0xffce
_F18 :: Key
_F18                           = Key 0xffcf
_F19 :: Key
_F19                           = Key 0xffd0

_Shift, _Shift_L :: Key
_Shift                         = Key 0xffe1
_Shift_L                       = Key 0xffe1
_Shift_R :: Key
_Shift_R                       = Key 0xffe2
_Ctrl, _Control, _Control_L :: Key
_Ctrl                          = Key 0xffe3
_Control                       = Key 0xffe3
_Control_L                     = Key 0xffe3
_Control_R :: Key
_Control_R                     = Key 0xffe4
_CapsLock :: Key
_CapsLock                      = Key 0xffe5
_ShiftLock :: Key
_ShiftLock                     = Key 0xffe6

_Meta, _Meta_L :: Key
_Meta                          = Key 0xffe7
_Meta_L                        = Key 0xffe7
_Meta_R :: Key
_Meta_R                        = Key 0xffe8
_Alt, _Alt_L :: Key
_Alt                           = Key 0xffe9
_Alt_L                         = Key 0xffe9
_Alt_R :: Key
_Alt_R                         = Key 0xffea
_Super, _Super_L :: Key
_Super                         = Key 0xffeb
_Super_L                       = Key 0xffeb
_Super_R :: Key
_Super_R                       = Key 0xffec
_Hyper, _Hyper_L :: Key
_Hyper                         = Key 0xffed
_Hyper_L                       = Key 0xffed
_Hyper_R :: Key
_Hyper_R                       = Key 0xffee

_Space :: Key
_Space                         = Key 0x0020
_Exclamation :: Key
_Exclamation                   = Key 0x0021
_Quotation :: Key
_Quotation                     = Key 0x0022
_NumberSign :: Key
_NumberSign                    = Key 0x0023
_Dollar :: Key
_Dollar                        = Key 0x0024
_Percent :: Key
_Percent                       = Key 0x0025
_Ampersand :: Key
_Ampersand                     = Key 0x0026
_Apostrophe :: Key
_Apostrophe                    = Key 0x0027
_ParenLeft :: Key
_ParenLeft                     = Key 0x0028
_ParenRight :: Key
_ParenRight                    = Key 0x0029
_Asterisk :: Key
_Asterisk                      = Key 0x002a
_Plus :: Key
_Plus                          = Key 0x002b
_Comma :: Key
_Comma                         = Key 0x002c
_Minus :: Key
_Minus                         = Key 0x002d
_Period :: Key
_Period                        = Key 0x002e
_Slash :: Key
_Slash                         = Key 0x002f
_0 :: Key
_0                             = Key 0x0030
_1 :: Key
_1                             = Key 0x0031
_2 :: Key
_2                             = Key 0x0032
_3 :: Key
_3                             = Key 0x0033
_4 :: Key
_4                             = Key 0x0034
_5 :: Key
_5                             = Key 0x0035
_6 :: Key
_6                             = Key 0x0036
_7 :: Key
_7                             = Key 0x0037
_8 :: Key
_8                             = Key 0x0038
_9 :: Key
_9                             = Key 0x0039
_Colon :: Key
_Colon                         = Key 0x003a
_Semicolon :: Key
_Semicolon                     = Key 0x003b
_Less :: Key
_Less                          = Key 0x003c
_Equal :: Key
_Equal                         = Key 0x003d
_Greater :: Key
_Greater                       = Key 0x003e
_Question :: Key
_Question                      = Key 0x003f
_At :: Key
_At                            = Key 0x0040
_A :: Key
_A                             = Key 0x0041
_B :: Key
_B                             = Key 0x0042
_C :: Key
_C                             = Key 0x0043
_D :: Key
_D                             = Key 0x0044
_E :: Key
_E                             = Key 0x0045
_F :: Key
_F                             = Key 0x0046
_G :: Key
_G                             = Key 0x0047
_H :: Key
_H                             = Key 0x0048
_I :: Key
_I                             = Key 0x0049
_J :: Key
_J                             = Key 0x004a
_K :: Key
_K                             = Key 0x004b
_L :: Key
_L                             = Key 0x004c
_M :: Key
_M                             = Key 0x004d
_N :: Key
_N                             = Key 0x004e
_O :: Key
_O                             = Key 0x004f
_P :: Key
_P                             = Key 0x0050
_Q :: Key
_Q                             = Key 0x0051
_R :: Key
_R                             = Key 0x0052
_S :: Key
_S                             = Key 0x0053
_T :: Key
_T                             = Key 0x0054
_U :: Key
_U                             = Key 0x0055
_V :: Key
_V                             = Key 0x0056
_W :: Key
_W                             = Key 0x0057
_X :: Key
_X                             = Key 0x0058
_Y :: Key
_Y                             = Key 0x0059
_Z :: Key
_Z                             = Key 0x005a
_BracketLeft :: Key
_BracketLeft                   = Key 0x005b
_Backslash :: Key
_Backslash                     = Key 0x005c
_BracketRight :: Key
_BracketRight                  = Key 0x005d
_Circumflex :: Key
_Circumflex                    = Key 0x005e
_Underscore :: Key
_Underscore                    = Key 0x005f
_Grave :: Key
_Grave                         = Key 0x0060
_BraceLeft :: Key
_BraceLeft                     = Key 0x007b
_Bar :: Key
_Bar                           = Key 0x007c
_BraceRight :: Key
_BraceRight                    = Key 0x007d
_Tilde :: Key
_Tilde                         = Key 0x007e
