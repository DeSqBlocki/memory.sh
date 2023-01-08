#!/bin/bash
free=$(free -mt | grep Total | awk '{print $4}');
echo $(date) $free >> /root/memory.log;
sync && echo 3 > /proc/sys/vm/drop_caches;
exit 0;
