#!/bin/bash
# it doesn't matter which ACM port we try, if we fail fast, we can just try the next one earlier
DATE=`date +%Y%m%d_%H%M%S`
./str2str -in serial://ttyACM0 -out tcpsvr://:2102 -c ~/rescube_audit/gpstrack/raw_$DATE.cmd 
#./str2str -in serial://ttyACM1 -out tcpsvr://:2102 -c ~/rescube_audit/gpstrack/raw_$DATE.cmd -t 10
#./str2str -in serial://ttyACM2 -out tcpsvr://:2102 -c ~/rescube_audit/gpstrack/raw_$DATE.cmd -t 10
#./str2str -in serial://ttyACM3 -out tcpsvr://:2102 -c ~/rescube_audit/gpstrack/raw_$DATE.cmd -t 10
