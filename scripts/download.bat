CALL echo off
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
CALL wsl.exe wget https://raw.githubusercontent.com/Silver-Volt4/3DSSync/master/template/get_ip_address.sh
CALL wsl.exe mv -f get_ip_address.sh 3DSSync
CALL wsl.exe sudo chmod+x 3DSSync/get_ip_address.sh
CALL wsl.exe wget https://raw.githubusercontent.com/Silver-Volt4/3DSSync/master/template/get_login_parameters.sh
CALL wsl.exe mv -f get_login_parameters.sh 3DSSync
CALL wsl.exe sudo chmod+x 3DSSync/get_login_parameters.sh
CALL wsl.exe wget https://raw.githubusercontent.com/Silver-Volt4/3DSSync/master/template/process_batch.sh
CALL wsl.exe mv -f process_batch.sh 3DSSync
CALL wsl.exe sudo chmod+x 3DSSync/process_batch.sh
CALL wsl.exe sudo chmod+x 3DSSync/sync.sh
CALL wsl.exe ln -s -f 3DSSync/sync.sh 3DSSync.sh
CALL POPD
CALL echo Downloaded 3DSSync. Press Enter to exit
set /p input=
