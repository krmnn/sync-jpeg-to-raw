#!/bin/bash

trash_cmd="$(pwd)/trash -v "

for folder in "$@"; do
    echo "Cleaning folder '$folder'"
    cd $folder

    if [ -d "./RAW" ]; then
        find ./RAW -iname "*.raf" -exec sh -c 'if [ ! -f ./JPG/$(basename -s .raf {}).jpg ]; then echo {}; fi' \; | xargs $trash_cmd

    elif [ -d "$folder/NEF" ]; then
        find ./RAW -iname "*.nef" -exec sh -c 'if [ ! -f ./JPG/$(basename -s .nef {}).jpg ]; then echo {}; fi' \; | xargs $trash_cmd
    fi

    cd .. & echo
done
