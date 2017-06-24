# sync-jpeg-to-raw
2017 Thomas Karmann <thomas@krmnn.de>

## Description
This script will synchronize multiple folders with RAW images to their corresponding JPEGs. The diff will be moved to MacOS trash bin. 

## Running it
Use the release. You can drop your folders on the icon (if you just click it a file dialog will open).

## Building it

Create the Application:

1. Build linked "trash" utility via "make".
2. Get platypus (http://www.sveinbjorn.org/platypus), a tool to create MacOS applications out of bundled shellscripts:
    - Select "sync-jpeg-to-raw.sh" as script of type "bash".
    - Check "accepts dropped items". Go to Settings and only allow identifier "public.folder".
    - Include "trash" binary. 
    - Click "create".
