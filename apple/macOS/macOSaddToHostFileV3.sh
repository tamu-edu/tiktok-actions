#! /bin/bash


HOSTS=/private/etc/hosts

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
