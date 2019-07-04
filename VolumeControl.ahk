; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         petahbyte
;
; Script Function:
;	Easily change your system volume with your Win key and
;	your scrollwheel. 
;
;
;
#SingleInstance
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval, 500
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DeviceID = 5 ; Use the getDeviceId.ahk to find out the Mixer ID.
SoundSet, 1, MASTER, mute, DeviceID
Menu, Tray, Icon, icons//w_muted.png, , 1
Menu, Tray, Tip, Mute On

#WheelUp::Send {Volume_Up}
#WheelDown::Send {Volume_Down}
#Mbutton::Send {Volume_Mute}

Pause::  ;Pause Break button is my chosen hotkey

SoundSet, +1, MASTER, mute, DeviceID
SoundGet, master_mute, , mute, DeviceID

if (master_mute = "off") {
  Menu, Tray, Icon, icons//w_mic.png, , 1
  SoundPlay, sounds//unmute.mp3,
} else {
  Menu, Tray, Icon, icons//w_muted.png, , 1
  SoundPlay, sounds//mute.mp3,
}

Menu, Tray, Tip, Mute %master_mute%

; ToolTip, Mute %master_mute%
; SetTimer, RemoveToolTip, 1000
; return

; HideTrayTip:
;  HideNotif()
; return

; HideNotif() {
;   TrayTip
; }

; RemoveToolTip:
; SetTimer, RemoveToolTip, Off
; ToolTip
; return

~LWin Up:: return
~RWin Up:: return