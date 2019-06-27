; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         One Hour Programmer <onehourprogrammer@gmail.com>
;
; Script Function:
;	Easily change your system volume with your Win key and
;	your scrollwheel. 
;
;
;
#SingleInstance
; #NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval, 500
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DeviceID = 6
SoundSet, +1, MASTER, mute, DeviceID

#WheelUp::Send {Volume_Up}
#WheelDown::Send {Volume_Down}
#Mbutton::Send {Volume_Mute}

Pause::  ;Pause Break button is my chosen hotkey

SoundSet, +1, MASTER, mute, DeviceID
SoundGet, master_mute, , mute, DeviceID

ToolTip, Mute %master_mute% ;use a tool tip at mouse pointer to show what state mic is after toggle
SetTimer, RemoveToolTip, 1000
return

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

~LWin Up:: return
~RWin Up:: return