#!/bin/bash
function recursive_copy_file()
{
  echo copying...
  dirlist=$(ls $1)
  for name in ${dirlist[*]}
  do
    if [ -f $1/$name ]; then
      # 如果是文件，并且$2不存在该文件，则直接copy
      if [ ! -f $2/$name ]; then
        cp $1/$name $2/$name
      fi
    elif [ -d $1/$name ]; then
      # 如果是目录，并且$2不存在该目录，则先创建目录
      if [ ! -d $2/$name ]; then
        mkdir -p $2/$name
      fi
      # 递归拷贝
      recursive_copy_file $1/$name $2/$name
    fi
  done
}
source_dir="/Users/huweitao/Desktop/program/ios"
dest_dir=" /Users/huweitao/Desktop/crash_log"
# 这个方法有点慢
recursive_copy_file $source_dir $dest_dir

#cp -R source_dir dest_dir
