#!/bin/bash

OIFS="$IFS"
IFS=$'\n'

BASE="$HOME/Videos"
folders=()
outs=()

for i in ${!folders[@]}
do
        mkdir "$BASE/${outs[$i]}"
        cd "$BASE/${folders[$i]}"

        for vid in `ls *.mkv`
        do
                INPUT="$BASE/${folders[$i]}/$vid"
                OUTPUT="$BASE/${outs[$i]}/$vid"

                ffmpeg -i $INPUT -c:v libx264 -crf 18 -vf format=yuv420p -c:a copy $OUTPUT
        done
        cd ..
done
IFS="$OIFS"
