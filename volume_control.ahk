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
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval, 500
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DeviceID = 6
SoundSet, +1, MASTER, mute, DeviceID

#WheelUp::Send {Volume_Up}
#WheelDown::Send {Volume_Down}
#Mbutton::Send {Volume_Mute}

; Copy this function into your script to use it.
HideTrayTip() {
    TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; It may be necessary to adjust this sleep.
        Menu Tray, Icon
    }
}

HideNotification:
  HideTrayTip()
return

Pause::  ;Pause Break button is my chosen hotkey

SoundSet, +1, MASTER, mute, DeviceID
SoundGet, master_mute, , mute, DeviceID

TrayTip MicrophoneMute %master_mute%, 
SetTimer, HideNotification, 3000

; ToolTip, Mute %master_mute% ;use a tool tip at mouse pointer to show what state mic is after toggle
; SetTimer, RemoveToolTip, 1000
; return

; RemoveToolTip:
; SetTimer, RemoveToolTip, Off
; ToolTip
; return

~LWin Up:: return
~RWin Up:: return