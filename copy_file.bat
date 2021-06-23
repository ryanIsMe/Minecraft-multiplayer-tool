@echo off
cls
start /min playit.exe 
timeout /t 10
taskkill /f /im playit.exe
copy "%cd%\data\config.json" "C:\Users\%username%\AppData\Roaming\playit"
xcopy /e /i "%cd%\data\.config" "C:\Users\%username%\.config"
pause