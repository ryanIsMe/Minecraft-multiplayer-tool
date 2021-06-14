@echo off
title Sync_DOWNLOAD
cd rclone
echo DOWNLOADING FILE !
rclone copy Minecraft_server:Minecraft "%~dp0\Server"
echo FINISH !