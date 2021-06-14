@echo off
cls
title 2M TOOL BY NDL
start /b /wait sync_down.bat ^& exit
echo STARTING SERVER...
start /wait MERGE_RUN.exe
start /b sync_up.bat
