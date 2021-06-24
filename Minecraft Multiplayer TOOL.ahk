Gui, Add, Text, x12 y49 w100 h30 +Center, Get File
Gui, Add, Button, x132 y29 w110 h50 gGet_File, Get
Gui, Add, Button, x132 y109 w110 h50 gCopy_File , Copy
Gui, Add, Text, x-298 y-127 w540 h136 , Text
Gui, Add, Button, x132 y189 w110 h50 gStart_server, Start
Gui, Add, Text, x382 y19 w150 h30 +Center, Quick Access
Gui, Add, Text, x12 y129 w100 h30 +Center, Copy File
Gui, Add, Text, x22 y209 w90 h30 +Center, Start Server
Gui, Add, Text, x352 y69 w70 h30 , Turn On/Off Menu
Gui, Add, Button, x432 y59 w140 h30 gTurn_off,Turn On/Off
Gui, Add, Text, x352 y119 w70 h30 , Ram Option
Gui, Add, Button, x432 y109 w140 h30 gRam_option, Ram
Gui, Add, Text, x342 y169 w80 h20, Server.properties
Gui, Add, Button, x432 y159 w140 h30 gEdit_server, Edit here
Gui, Add, Button, x362 y209 w100 h30 gUpload_file, Upload
Gui, Add, Button, x472 y209 w100 h30 gDownload_file, Download

Gui, Show, x378 y134 h276 w606, Minecraft Multiplayer Tool
Return

Get_File:
	runwait, get_file.bat
	msgbox,0,Alert Windows, Done!
	return 

Copy_File:
	runwait, copy_file.bat
	msgbox,0,Alert Windows, Done!
	return 

Upload_file:
	runwait, sync_up.bat
	msgbox,0,Alert Windows, Done!
	return 

Download_file:
	runwait, sync_down.bat
	msgbox,0,Alert Windows, Done!
	return 

Ram_option:
	runwait, edit start.bat
	return

Edit_server:
	runwait, edit "Server\server.properties"
	return

Start_server:
	msgbox,4,AlertWindows,Do you want to sync your server after playing ?
	ifmsgbox Yes
	{
		runwait,sync_down.bat
		run,playit.exe,,hide,
		runwait,start.bat
		msgbox,0,Alert Windows, Uploading server, press ok to continue...
		runwait,sync_up
		msgbox,0,Alert Windows, Done!
		return
	}
	else 
	{
		run,playit.exe,,hide,
		runwait,start.bat
	}
	

Turn_off:
	ifwinexist, ahk_class ConsoleWindowClass ahk_exe cmd.exe
	{
		winhide, ahk_class ConsoleWindowClass ahk_exe cmd.exe
	}
	else 
		IfWinNotActive, ahk_class ConsoleWindowClass ahk_exe cmd.exe
		{
			winshow, ahk_class ConsoleWindowClass ahk_exe cmd.exe
		}
	
	return

GuiClose:	
	process, close,playit.exe
	ExitApp