#!/usr/bin/env bash

# 环境
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
INPUT=$DIR/input

# 清空当前屏幕
tput reset || clear

# 更改终端大小
printf "\033[8;30;90t" || true

# 检查处理器是否受支持
if ! uname -m | egrep -q "x86_64"; then
  echo "目前仅支持X86_64的Linux系统" >&2
  exit
fi

# 欢迎信息
echo -e "\t欢迎使用该工具!!\n" \
    "\t该工具的创建者是HuaLiMao-AQ哦~\n" >&2

FILE_PATH=$1
source ${DIR}/bin/d-files.sh
