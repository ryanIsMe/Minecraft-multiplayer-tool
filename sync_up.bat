@echo off
title Sync_UPLOAD
cd rclone
echo DELETING OLD FILE
rclone purge Minecraft_server:Minecraft
echo FINISH !
echo UPLOADING FILE - DO NOT TURN OFF!
rclone --tpslimit 5 copy "%~dp0\Server" Minecraft_server:Minecraft
echo FINISH !