#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
run, merge.bat
IfWinExist Minecraft Server
{
	WinActivate
}
else
{
	exit
}
WinHide
#2::
IfWinActive Minecraft Server
{
	WinHide Minecraft Server
}
else
{
	WinShow Minecraft Server
}
return