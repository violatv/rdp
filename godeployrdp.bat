@echo off
title RDP script for Go Deploy Lab by fb.com/thuong.hai.581
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
sc start audiosrv
sc config Audiosrv start= auto
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
curl -k -L -O https://github.com/kmille36/Go-Deploy-Windows-11-NGROK-RDP/raw/main/remote60fps.reg
reg import remote60fps.reg
curl -LkO https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-windows-amd64.zip
tar xf ngrok-v3-stable-windows-amd64.zip
curl -Lko "Install Chocolatey GUI.bat" https://github.com/kmille36/Go-Deploy-Windows-11-NGROK-RDP/raw/main/chocolateyGUI.bat 
copy "Install Chocolatey GUI.bat" "C:\Users\Public\Desktop"
cls
ngrok config add-authtoken 2FHQ9SC0PteACNxKnJLZlGSLo4o_83fgAadbdrp8sWhLrVWzv
ngrok tcp --region uk 3389
