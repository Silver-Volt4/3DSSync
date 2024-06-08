rem CALL echo off
CALL pushd \\wsl.localhost\Ubuntu\home
call wsl.exe echo WSL is working correctly!
CALL wsl.exe cd $HOME
CALL wsl.exe sudo apt update
CALL wsl.exe sudo apt upgrade
CALL wsl.exe sudo apt install wget
CALL wsl.exe sudo apt install git
CALL wsl.exe sudo apt install imagemagick
CALL wsl.exe sudo apt install lftp
CALL wsl.exe git clone https://github.com/Silver-Volt4/3DSSync
CALL wsl.exe cd 3DSSync
CALL wsl.exe ls
CALL POPD
CALL pause