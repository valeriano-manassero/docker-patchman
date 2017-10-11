#!/bin/bash

[ -z "$KEY" ] && echo "Env KEY not to set" && exit 1;
echo "$KEY" > /etc/patchman/license/key

rm -f /var/run/patchmand.pid

/usr/local/patchman/patchmand
while pgrep -x "patchmand" > /dev/null; do
        sleep 1
done