# 3DSSync
3DSSync is a shell script that can copy 3DS photos using FTP.

Right now it's a bit hacky, contributions are welcome.

# Requirements
- A Windows 10/11 install

- WSL2 running a Debian based distro installed [with the password promt disabled](https://www.youtube.com/watch?v=a2sDIbBO8Tw) ([Install Guide](https://learn.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package))

- A Modded 3DS with [FTPD](https://github.com/mtheall/ftpd) installed

# How to use
3DSSync is supposed to be "unixy" in that you can customise it. There are three scripts that you must edit yourself (these are: `get_ip_address.sh`, `get_login_parameters.sh` and `process_batch.sh`) to make 3DSSync work. What you do with them is described in each of the files.

Currently, there is no way to customise what 3DSSync copies. The currently processed folders are `/DCIM/` (3DS Camera and in-game screenshots) and `/luma/screenshots/` (Luma3DS screenshots). Luma screenshots are flattened into a single image and converted to PNG for convenience.

## How to Run
- Download [this folder](https://github.com/xtomasnemec/3DSSync/tree/master/scripts)
- Run download.bat
- Navigate to your WSL home/3DSSync and edit `get_ip_address.sh`, `get_login_parameters.sh` and `process_batch.sh`