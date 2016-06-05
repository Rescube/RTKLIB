#!/bin/bash
# it doesn't matter which ACM port we try, if we fail fast, we can just try the next one earlier
DATE=`date +%Y%m%d_%H%M%S`
./str2str -in serial://ttyACM0 -out tcpsvr://:2102 rtcm3 -out ~/rescube_audit/gpstrack/base_$DATE.rtcm3 -p 47.529909133 19.027932991 190.6687 -sta 100

#./str2str -in serial://ttyACM1 -out tcpsvr://:2102 -c 
#./str2str -in serial://ttyACM2 -out tcpsvr://:2102 -c ~/rescube_audit/gpstrack/raw_$DATE.cmd -t 10
#./str2str -in serial://ttyACM3 -out tcpsvr://:2102 -c ~/rescube_audit/gpstrack/raw_$DATE.cmd -t 10
