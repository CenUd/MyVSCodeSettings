#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive ahk_exe Code.exe
Esc::
KeyWait, Esc
KeyWait, Esc, D T0.18
If ErrorLevel
    Send, {Esc}
Else
    Send, {Esc}^{Space}
    Sleep, 50
Return

#IfWinActive ahk_exe nvim-qt.exe
Esc::
KeyWait, Esc
KeyWait, Esc, D T0.18
If ErrorLevel
    Send, {Esc}
Else
    Send, {Esc}^{Space}
    Sleep, 50
Return