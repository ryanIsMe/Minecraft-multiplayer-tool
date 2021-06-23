@echo off
cls
title Minecraft Server
cd Server
java -Xms512M -Xmx512M -jar server.jar nogui
pause