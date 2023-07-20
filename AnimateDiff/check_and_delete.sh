#!/bin/bash

# 定义文件路径
file_path="AnimateDiff_aliyun/AnimateDiff/models/StableDiffusion/Put diffusers stable-diffusion-v1-5 repo here.txt"

# 检查文件是否存在
if [ -f "$file_path" ]; then
  # 如果文件存在，获取文件夹路径并执行删除指令
  folder_path=$(dirname "$file_path")
  rm -r "$folder_path"
  echo "已删除文件夹：$folder_path"
else
  # 如果文件不存在，输出提示信息
  echo "文件不存在：$file_path，未执行删除操作。"
fi
