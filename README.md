# 3DSSync
3DSSync is a Unix script that can copy 3DS photos using FTP. 

Right now it's a bit hacky, contributions are welcome.

## How to use
3DSSync is supposed to be "unixy" in that you can customise it. There are three scripts that you must supply yourself to make 3DSSync work. These are stored in `templates/`, copy them to the root of the repository (they will be ignored by git). What you do with them is described in each of the files.

Currently, there is no way to customise what 3DSSync copies. The currently processed folders are `/DCIM/` (3DS Camera and in-game screenshots) and `/luma/screenshots/` (Luma3DS screenshots). Luma screenshots are flattened into a single image and converted to PNG for convenience.