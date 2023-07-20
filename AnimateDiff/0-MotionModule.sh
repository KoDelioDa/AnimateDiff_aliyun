#!/bin/bash

# 定义文件下载链接数组
URLS=("https://huggingface.co/godlzj/Motion_Module/resolve/main/mm_sd_v14.ckpt" 
      "https://huggingface.co/godlzj/Motion_Module/resolve/main/mm_sd_v15.ckpt")

# 定义目标文件夹
DEST_DIR="models/Motion_Module"

# 创建目标文件夹（如果不存在）
mkdir -p "$DEST_DIR"

# 使用wget命令下载文件到目标文件夹
for url in "${URLS[@]}"
do
    wget "$url" -P "$DEST_DIR"
done
