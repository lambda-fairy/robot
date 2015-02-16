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

_Backspace :: Switch
_Backspace                     = Key 0xff08
_Tab :: Switch
_Tab                           = Key 0xff09
_LineFeed :: Switch
_LineFeed                      = Key 0xff0a
_Clear :: Switch
_Clear                         = Key 0xff0b
_Return :: Switch
_Return                        = Key 0xff0d
_Pause :: Switch
_Pause                         = Key 0xff13
_ScrollLock :: Switch
_ScrollLock                    = Key 0xff14
_SysReq :: Switch
_SysReq                        = Key 0xff15
_Escape :: Switch
_Escape                        = Key 0xff1b
_Delete :: Switch
_Delete                        = Key 0xffff

_Home :: Switch
_Home                          = Key 0xff50
_Left :: Switch
_Left                          = Key 0xff51
_Up :: Switch
_Up                            = Key 0xff52
_Right :: Switch
_Right                         = Key 0xff53
_Down :: Switch
_Down                          = Key 0xff54
_Prior, _PageUp :: Switch
_Prior                         = Key 0xff55
_PageUp                        = Key 0xff55
_Next, _PageDown :: Switch
_Next                          = Key 0xff56
_PageDown                      = Key 0xff56
_End :: Switch
_End                           = Key 0xff57
_Begin :: Switch
_Begin                         = Key 0xff58

_Select :: Switch
_Select                        = Key 0xff60
_Print :: Switch
_Print                         = Key 0xff61
_Execute :: Switch
_Execute                       = Key 0xff62
_Insert :: Switch
_Insert                        = Key 0xff63
_Undo :: Switch
_Undo                          = Key 0xff65
_Redo :: Switch
_Redo                          = Key 0xff66
_Menu :: Switch
_Menu                          = Key 0xff67
_Find :: Switch
_Find                          = Key 0xff68
_Cancel :: Switch
_Cancel                        = Key 0xff69
_Help :: Switch
_Help                          = Key 0xff6a
_Break :: Switch
_Break                         = Key 0xff6b
_ModeSwitch, _ScriptSwitch :: Switch
_ModeSwitch                    = Key 0xff7e
_ScriptSwitch                  = Key 0xff7e
_NumLock :: Switch
_NumLock                       = Key 0xff7f

_KP_Space :: Switch
_KP_Space                      = Key 0xff80
_KP_Tab :: Switch
_KP_Tab                        = Key 0xff89
_KP_Enter :: Switch
_KP_Enter                      = Key 0xff8d
_KP_F1 :: Switch
_KP_F1                         = Key 0xff91
_KP_F2 :: Switch
_KP_F2                         = Key 0xff92
_KP_F3 :: Switch
_KP_F3                         = Key 0xff93
_KP_F4 :: Switch
_KP_F4                         = Key 0xff94
_KP_Home :: Switch
_KP_Home                       = Key 0xff95
_KP_Left :: Switch
_KP_Left                       = Key 0xff96
_KP_Up :: Switch
_KP_Up                         = Key 0xff97
_KP_Right :: Switch
_KP_Right                      = Key 0xff98
_KP_Down :: Switch
_KP_Down                       = Key 0xff99
_KP_Prior, _KP_PageUp :: Switch
_KP_Prior                      = Key 0xff9a
_KP_PageUp                     = Key 0xff9a
_KP_Next, _KP_PageDown :: Switch
_KP_Next                       = Key 0xff9b
_KP_PageDown                   = Key 0xff9b
_KP_End :: Switch
_KP_End                        = Key 0xff9c
_KP_Begin :: Switch
_KP_Begin                      = Key 0xff9d
_KP_Insert :: Switch
_KP_Insert                     = Key 0xff9e
_KP_Delete :: Switch
_KP_Delete                     = Key 0xff9f
_KP_Multiply :: Switch
_KP_Multiply                   = Key 0xffaa
_KP_Add :: Switch
_KP_Add                        = Key 0xffab
_KP_Separator :: Switch
_KP_Separator                  = Key 0xffac
_KP_Subtract :: Switch
_KP_Subtract                   = Key 0xffad
_KP_Decimal :: Switch
_KP_Decimal                    = Key 0xffae
_KP_Divide :: Switch
_KP_Divide                     = Key 0xffaf
_KP_Equal :: Switch
_KP_Equal                      = Key 0xffbd

_KP_0 :: Switch
_KP_0                          = Key 0xffb0
_KP_1 :: Switch
_KP_1                          = Key 0xffb1
_KP_2 :: Switch
_KP_2                          = Key 0xffb2
_KP_3 :: Switch
_KP_3                          = Key 0xffb3
_KP_4 :: Switch
_KP_4                          = Key 0xffb4
_KP_5 :: Switch
_KP_5                          = Key 0xffb5
_KP_6 :: Switch
_KP_6                          = Key 0xffb6
_KP_7 :: Switch
_KP_7                          = Key 0xffb7
_KP_8 :: Switch
_KP_8                          = Key 0xffb8
_KP_9 :: Switch
_KP_9                          = Key 0xffb9

_F1 :: Switch
_F1                            = Key 0xffbe
_F2 :: Switch
_F2                            = Key 0xffbf
_F3 :: Switch
_F3                            = Key 0xffc0
_F4 :: Switch
_F4                            = Key 0xffc1
_F5 :: Switch
_F5                            = Key 0xffc2
_F6 :: Switch
_F6                            = Key 0xffc3
_F7 :: Switch
_F7                            = Key 0xffc4
_F8 :: Switch
_F8                            = Key 0xffc5
_F9 :: Switch
_F9                            = Key 0xffc6
_F10 :: Switch
_F10                           = Key 0xffc7
_F11 :: Switch
_F11                           = Key 0xffc8
_F12 :: Switch
_F12                           = Key 0xffc9
_F13 :: Switch
_F13                           = Key 0xffca
_F14 :: Switch
_F14                           = Key 0xffcb
_F15 :: Switch
_F15                           = Key 0xffcc
_F16 :: Switch
_F16                           = Key 0xffcd
_F17 :: Switch
_F17                           = Key 0xffce
_F18 :: Switch
_F18                           = Key 0xffcf
_F19 :: Switch
_F19                           = Key 0xffd0

_Shift, _Shift_L :: Switch
_Shift                         = Key 0xffe1
_Shift_L                       = Key 0xffe1
_Shift_R :: Switch
_Shift_R                       = Key 0xffe2
_Ctrl, _Control, _Control_L :: Switch
_Ctrl                          = Key 0xffe3
_Control                       = Key 0xffe3
_Control_L                     = Key 0xffe3
_Control_R :: Switch
_Control_R                     = Key 0xffe4
_CapsLock :: Switch
_CapsLock                      = Key 0xffe5
_ShiftLock :: Switch
_ShiftLock                     = Key 0xffe6

_Meta, _Meta_L :: Switch
_Meta                          = Key 0xffe7
_Meta_L                        = Key 0xffe7
_Meta_R :: Switch
_Meta_R                        = Key 0xffe8
_Alt, _Alt_L :: Switch
_Alt                           = Key 0xffe9
_Alt_L                         = Key 0xffe9
_Alt_R :: Switch
_Alt_R                         = Key 0xffea
_Super, _Super_L :: Switch
_Super                         = Key 0xffeb
_Super_L                       = Key 0xffeb
_Super_R :: Switch
_Super_R                       = Key 0xffec
_Hyper, _Hyper_L :: Switch
_Hyper                         = Key 0xffed
_Hyper_L                       = Key 0xffed
_Hyper_R :: Switch
_Hyper_R                       = Key 0xffee

_Space :: Switch
_Space                         = Key 0x0020
_Exclamation :: Switch
_Exclamation                   = Key 0x0021
_Quotation :: Switch
_Quotation                     = Key 0x0022
_NumberSign :: Switch
_NumberSign                    = Key 0x0023
_Dollar :: Switch
_Dollar                        = Key 0x0024
_Percent :: Switch
_Percent                       = Key 0x0025
_Ampersand :: Switch
_Ampersand                     = Key 0x0026
_Apostrophe :: Switch
_Apostrophe                    = Key 0x0027
_ParenLeft :: Switch
_ParenLeft                     = Key 0x0028
_ParenRight :: Switch
_ParenRight                    = Key 0x0029
_Asterisk :: Switch
_Asterisk                      = Key 0x002a
_Plus :: Switch
_Plus                          = Key 0x002b
_Comma :: Switch
_Comma                         = Key 0x002c
_Minus :: Switch
_Minus                         = Key 0x002d
_Period :: Switch
_Period                        = Key 0x002e
_Slash :: Switch
_Slash                         = Key 0x002f
_0 :: Switch
_0                             = Key 0x0030
_1 :: Switch
_1                             = Key 0x0031
_2 :: Switch
_2                             = Key 0x0032
_3 :: Switch
_3                             = Key 0x0033
_4 :: Switch
_4                             = Key 0x0034
_5 :: Switch
_5                             = Key 0x0035
_6 :: Switch
_6                             = Key 0x0036
_7 :: Switch
_7                             = Key 0x0037
_8 :: Switch
_8                             = Key 0x0038
_9 :: Switch
_9                             = Key 0x0039
_Colon :: Switch
_Colon                         = Key 0x003a
_Semicolon :: Switch
_Semicolon                     = Key 0x003b
_Less :: Switch
_Less                          = Key 0x003c
_Equal :: Switch
_Equal                         = Key 0x003d
_Greater :: Switch
_Greater                       = Key 0x003e
_Question :: Switch
_Question                      = Key 0x003f
_At :: Switch
_At                            = Key 0x0040
_A :: Switch
_A                             = Key 0x0041
_B :: Switch
_B                             = Key 0x0042
_C :: Switch
_C                             = Key 0x0043
_D :: Switch
_D                             = Key 0x0044
_E :: Switch
_E                             = Key 0x0045
_F :: Switch
_F                             = Key 0x0046
_G :: Switch
_G                             = Key 0x0047
_H :: Switch
_H                             = Key 0x0048
_I :: Switch
_I                             = Key 0x0049
_J :: Switch
_J                             = Key 0x004a
_K :: Switch
_K                             = Key 0x004b
_L :: Switch
_L                             = Key 0x004c
_M :: Switch
_M                             = Key 0x004d
_N :: Switch
_N                             = Key 0x004e
_O :: Switch
_O                             = Key 0x004f
_P :: Switch
_P                             = Key 0x0050
_Q :: Switch
_Q                             = Key 0x0051
_R :: Switch
_R                             = Key 0x0052
_S :: Switch
_S                             = Key 0x0053
_T :: Switch
_T                             = Key 0x0054
_U :: Switch
_U                             = Key 0x0055
_V :: Switch
_V                             = Key 0x0056
_W :: Switch
_W                             = Key 0x0057
_X :: Switch
_X                             = Key 0x0058
_Y :: Switch
_Y                             = Key 0x0059
_Z :: Switch
_Z                             = Key 0x005a
_BracketLeft :: Switch
_BracketLeft                   = Key 0x005b
_Backslash :: Switch
_Backslash                     = Key 0x005c
_BracketRight :: Switch
_BracketRight                  = Key 0x005d
_Circumflex :: Switch
_Circumflex                    = Key 0x005e
_Underscore :: Switch
_Underscore                    = Key 0x005f
_Grave :: Switch
_Grave                         = Key 0x0060
_BraceLeft :: Switch
_BraceLeft                     = Key 0x007b
_Bar :: Switch
_Bar                           = Key 0x007c
_BraceRight :: Switch
_BraceRight                    = Key 0x007d
_Tilde :: Switch
_Tilde                         = Key 0x007e
