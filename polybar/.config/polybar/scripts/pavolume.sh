#!/bin/bash


mixer=$(amixer sget Master | awk -F'[][]' 'NR==7 { print $2; print $4 }')

readarray -t volume <<<"$mixer"

if [ ${volume[1]} = 'on' ] 
then
    echo ${volume[0]} 
else
    echo 'Mute'
fi
