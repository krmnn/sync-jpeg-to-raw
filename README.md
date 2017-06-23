# sync-jpeg-to-raf
2017 by Thomas Karmann <thomas@krmnn.de>

## Description
This script will synchronize folders with RAW images to their corresponding JPEGs. The diff will be moved to MacOS trash bin. 

## Running it

Create a Dock-Icon on which you can drop your folders:

1. Build linked "trash" utility via "make"
2. Get platypus (http://www.sveinbjorn.org/platypus), a tool to create MacOS applications out of bundled shellscripts:
  - Include "trash" binary. 
  - Check "accepts dropped items". Go to Settings and only allow identifier "public.folder".
