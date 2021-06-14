#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
run, 2M_tool.bat
IfWinExist 2M TOOL BY NDL
{
	WinActivate
}
else
{
	exit
}
WinHide
#1::
IfWinActive 2M TOOL BY NDL
{
	WinHide 2M TOOL BY NDL
}
else
{
	WinShow 2M TOOL BY NDL
}
return