#!/bin/bash



. $HOME/.cache/wal/colors.sh
echo $background
export tbackground=`echo $background | sed s/#/#88/`

echo "SET ENVIRONMENT tbackground=$tbackground"
