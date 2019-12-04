#SingleInstance
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval, 500
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

RShift Up::
    If (A_PriorKey = "RShift") ;  If RShift was pressed alone
   	 Send, {Up} ; up arrow
return
>+Del:: Send {Shift Down}{Del}{Shift Up} ; >+ means RShift

~LWin Up:: return
~RWin Up:: return
