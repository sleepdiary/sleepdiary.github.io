#!/bin/sh

SOURCE="favicon.svg"
DEST="favicon.ico"

inkscape -w 16 -h 16 -o 16.png "$SOURCE"
inkscape -w 32 -h 32 -o 32.png "$SOURCE"
inkscape -w 48 -h 48 -o 48.png "$SOURCE"

convert 16.png 32.png 48.png "$DEST"

rm -f 16.png 32.png 48.png
