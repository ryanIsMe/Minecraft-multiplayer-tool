@echo off
cls
start /min playit.exe 
timeout /t 10
taskkill /f /im playit.exe
copy "C:\Users\%username%\AppData\Roaming\playit\config.json" "%~dp0/data"
xcopy /e /i  "C:\Users\%username%\.config" "%~dp0/data/.config"