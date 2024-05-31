#!/bin/bash

download_all() {
    COMMAND="open $(./get_login_parameters.sh) $(./get_ip_address.sh);"
    if [ -f last_timestamp.txt ]
    then
        LAST=$(cat last_timestamp.txt)
        OPT="-N \"$LAST\""
    else
        OPT=""
    fi

    # Download files
    COMMAND="$COMMAND mirror /DCIM/ -I \"*.JPG\" -P 2 $OPT;"
    COMMAND="$COMMAND mirror /luma/screenshots/ -I \"*.bmp\" -P 2 $OPT;"
    cd dl
    lftp -c "$COMMAND"

    # Determine newest obtained file
    NEWEST_FILE=$(find . -print0 | xargs -r -0 ls -1 -t 2>/dev/null | head -1 )
    if [ "$NEWEST_FILE" != ".:" ]
    then
        NEWEST=$(date -r $NEWEST_FILE "+%T %F")
        echo $NEWEST > ../last_timestamp.txt
    fi
    cd ..
}

_normalize_dcim_jpg() {
    FILE=$1
    mv $FILE ../batch/newest.jpg
    mv ../batch/newest.jpg ../batch/$(echo "3DS_${FILE:5}" | tr "/" "_")
}

_normalize_luma_screenshot() {
    FILE=$1
    SIGNATURE=${FILE:12:23}
    convert -gravity center -background none -append screenshots/${SIGNATURE}_top.bmp screenshots/${SIGNATURE}_bot.bmp ../batch/${SIGNATURE}.png
}

transform_all() {
    mkdir -p batch
    cd dl
    find DCIM/ -type f -print0 | while IFS= read -d '' -r file; do _normalize_dcim_jpg "$file"; done
    find screenshots/ -type f -name "*_bot.bmp" -print0 | while IFS= read -d '' -r file; do _normalize_luma_screenshot "$file"; done
    cd ..
}

mkdir -p dl
download_all
transform_all
rm -rf dl