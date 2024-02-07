#!/bin/bash

# Yazar: Asım Taha Şanlı "tahasanli76@.gmail.com"

all_flag=false
num_flag=false
num_value=1

while getopts ":an:" opt;
  do
  case $opt in
    a)
      all_flag=true
      ;;
    n)
      num_flag=true
      num_value=$OPTARG
      ;;
  esac
done

shift $((OPTIND-1))

for directory in "$@";do
  disk_usage=$(du -h --max-depth=$num_value $directory 2>/dev/null | sort -hr | head -n 10)
  if [ -n "$disk_usage" ];then
    if [ "$all_flag" = true ];then
      echo "$disk_usage" | head -n 10
    else
      echo "$disk_usage" | head -n $num_value
    fi
  fi
done
