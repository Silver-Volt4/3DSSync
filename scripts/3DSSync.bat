rem CALL echo off
CALL pushd \\wsl.localhost\Ubuntu\home
call wsl.exe echo WSL is working correctly!
CALL wsl.exe ./3DSSync/sync.sh
CALL POPD
CALL echo Files copied succesfully. Press Enter to exit
set /p input=
