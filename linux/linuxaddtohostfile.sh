#! /bin/bash
# add entries to hosts file to block (127.0.0.1) for policy
# v1 Robert Cooper <racooper@tamu.edu> 12/16/2022

if [ "$EUID" -ne 0 ]
  then echo "Please run as root."
  exit
fi
if [ ! $1 ]
  then
  HOSTS=/etc/hosts
else 
  HOSTS=$1
fi

if [ ! -f $HOSTS ]
  then
  echo "host file does not exist! $HOSTS"
  echo "specify hosts file on command line:"
  echo "  $0 /etc/hosts"
  exit
fi

declare -a sites=("tiktokv.com" "tiktok.com" "tiktokcdn.com" "tiktokcdn-us.com" "ttwstatic.com" "bytedapm.com" "www.tiktokv.com" "www.tiktok.com" "www.tiktokcdn.com" "www.tiktokcdn-us.com" "www.ttwstatic.com" "www.bytedapm.com")

for str in "${sites[@]}"; do
grep -E "127\.0\.0\.1\s$str" $HOSTS
  if [ $? -eq 0 ]
    then continue
  fi
  grep -E "\s$str" $HOSTS
  if [ $? -eq 0 ]
    then
    sed -i "/$str/d" $HOSTS
    echo "127.0.0.1 $str" >> $HOSTS
    continue
  fi
    echo "127.0.0.1 $str" >> $HOSTS
done
