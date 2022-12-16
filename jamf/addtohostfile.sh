#! /bin/bash

declare -a sites=("127.0.0.1 tiktokv.com" "127.0.0.1 tiktok.com" "127.0.0.1 tiktokcdn.com" "127.0.0.1 tiktokcdn-us.com" "127.0.0.1 ttwstatic.com" "127.0.0.1 bytedapm.com" "127.0.0.1 www.tiktokv.com" "127.0.0.1 www.tiktok.com" "127.0.0.1 www.tiktokcdn.com" "127.0.0.1 www.tiktokcdn-us.com" "127.0.0.1 www.ttwstatic.com" "127.0.0.1 www.bytedapm.com")


for str in "${sites[@]}"; do
    echo $str >> /private/etc/hosts
done 