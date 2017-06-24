#!/bin/bash

trash_cmd="$(pwd)/trash -v "

for folder in "$@"; do

    if [ -d "${folder}" ]; then
        echo "Cleaning folder '${folder}'..."
        cd "${folder}"
    else
        echo "Folder '${folder}' is not accessible! Skipping..."
        continue
    fi

    if [ -d "./RAF" ]; then
        find ./RAF -iname "*.RAF" -exec sh -c 'if [ ! -f ./JPG/$(basename -s .RAF {}).JPG ]; then echo {}; fi' \; | xargs ${trash_cmd}

    elif [ -d "./NEF" ]; then
        find ./NEF -iname "*.NEF" -exec sh -c 'if [ ! -f ./JPG/$(basename -s .NEF {}).JPG ]; then echo {}; fi' \; | xargs ${trash_cmd}
    fi

    cd .. 
    echo
done

echo "Finished."
