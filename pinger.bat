@echo off
mode con lines=30 cols=70
chcp 65001
color 02 && cls
title IP Pinger

echo.
echo   ██████╗ ███████╗██╗   ██╗ 
echo   ██╔══██╗██╔════╝██║   ██║ 
echo   ██║  ██║█████╗  ██║   ██║
echo   ██║  ██║██╔══╝  ╚██╗ ██╔╝   
echo   ██████╔╝███████╗ ╚████╔╝   
echo   ╚═════╝ ╚══════╝  ╚═══╝   
echo                 https://www.discord.gg/hour
echo.

rem Set a variable called IP
set /p IP=Enter IP=
color 3
:top
PING -n 1 %IP% | FIND "TTL="
title dev is pinging %IP%
IF ERRORLEVEL 1 (echo [Offline] %IP% [Offline])
set /a num= (%Random%%%9)+1
color %num%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top
