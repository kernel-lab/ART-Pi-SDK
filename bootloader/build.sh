#!/bin/bash

SOURCE_DIR="build" 
TARGET_DIR="output" 

# Check the validity of the parameters
if [ "$#" -gt 1 ]; then  
    echo "Too many arguments." 
    echo "Please enter the parameters correctly!!!" 
    exit 1  
fi

echo_help_info()
{
    echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    echo "                      Build Option Help Info                               "
    echo "            Build Target               : ./build.sh                        "
    echo "            Clean Target no bin&hex    : ./build.sh clean                  "
    echo "            Clean Target witch bin&hex : ./build.sh clean_all              "
    echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
}

mkdir_output_mv_bin()
{
    if [ ! -d "$TARGET_DIR" ]; then  
        mkdir -p "$TARGET_DIR"  
        echo ">>> Create a target directory : $TARGET_DIR >>>"
    fi

    find "$SOURCE_DIR" -type f \( -name "*.bin" -o -name "*.hex" \) -exec mv {} "$TARGET_DIR/" \; 

    if [ $(find "$TARGET_DIR" -type f \( -name "*.bin" -o -name "*.hex" \) | wc -l) -gt 0 ]; then  
        echo ">>> Move target file .bin and .hex to $TARGET_DIR success >>>"  
    else  
        echo ">>> Cannot find target file in $SOURCE_DIR >>>"  
    fi
}

delete_output_dir()
{
    if [ -d "$TARGET_DIR" ]; then
        rm -r "$TARGET_DIR"
        echo ">>> Clean $DIR dir >>>"
    else
        echo ">>> Note: $DIR not exit >>>"
    fi
}

if [ "$1" = "help" ]; then
    echo_help_info
elif [ "$1" = "clean" ]; then
    echo ">>> Clean BootLoader >>>"
    make clean
elif [ "$1" = "clean_all" ]; then
    echo ">>> Clean All >>>"
    make clean
    delete_output_dir
else
    echo ">>> Starting Build BootLoader >>>"
    make
    mkdir_output_mv_bin
fi