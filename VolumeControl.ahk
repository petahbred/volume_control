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
#Include, %A_ScriptDir%
#Include, va.ahk

#SingleInstance
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval, 500
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; DeviceID = 7 ; Use the getDeviceId.ahk to find out the Mixer ID.

IMMDevice := VA_GetDevice("Microphone")
VA_SetMute(true, , IMMDevice)

VA_SetVolume(100.0, , , IMMDevice)
Menu, Tray, Icon, icons//w_muted.png, , 1
Menu, Tray, Tip, Mute On

#WheelUp::Send {Volume_Up}
#WheelDown::Send {Volume_Down}
#Mbutton::Send {Volume_Mute}

Pause::  ;Pause Break button is my chosen hotkey

VA_SetVolume(100.0, , , IMMDevice)
master_mute := VA_GetMute(, IMMDevice)

if (master_mute) {
  VA_SetMute(false, , IMMDevice)
  Menu, Tray, Icon, icons//w_mic.png, , 1
  SoundPlay, sounds//unmute.mp3,
} else {
  VA_SetMute(true, , IMMDevice)
  Menu, Tray, Icon, icons//w_muted.png, , 1
  SoundPlay, sounds//mute.mp3,
}

Menu, Tray, Tip, Mute %master_mute%
return

~LWin Up:: return
~RWin Up:: return