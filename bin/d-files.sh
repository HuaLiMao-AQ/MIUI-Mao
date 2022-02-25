#!/usr/bin/env bash

# 下载文件
if [[ ${FILE_PATH:0:8} == "https://" || ${FILE_PATH:0:7} == "http://" ]];
then
    if [[ -e /usr/bin/aria2c ]];
    then
        rm $TMP/*.aria2c
        aria2c -c -s $(nproc --all) "$FILE_PATH"
    else
        if [[ -e /usr/bin/wget ]];
        then
        wget "$FILE_PATH"
        fi
    mv $TMP/*.zip $INPUT
    fi
elif [[ -e $FILE_PATH ]];
then
    cp $FILE_PATH $INPUT
fi



