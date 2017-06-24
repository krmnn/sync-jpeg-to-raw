#!/bin/bash

trash_cmd="$(pwd)/trash -v "

for folder in "$@"; do

    if [ -d "${folder}" ]; then
        echo "Cleaning folder '${folder}'"
        cd "${folder}"
    else
        echo "Folder '${folder}' is not accessible! Skipping..."
        continue
    fi

    if [ -d "./RAF" ]; then
        find ./RAF -iname "*.raf" -exec sh -c 'if [ ! -f ./JPG/$(basename -s .raf {}).jpg ]; then echo {}; fi' \; | xargs $trash_cmd

    elif [ -d "./NEF" ]; then
        find ./NEF -iname "*.nef" -exec sh -c 'if [ ! -f ./JPG/$(basename -s .nef {}).jpg ]; then echo {}; fi' \; | xargs $trash_cmd
    fi

    cd .. & echo
done
