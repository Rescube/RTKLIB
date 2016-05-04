#!/bin/sh
#
# make all cui applications by gcc
#
EXTRAOPTION="-mcpu=cortex-a15 -mfpu=neon-vfpv4 -mfloat-abi=hard -ffast-math"

echo; echo % pos2kml/gcc
cd pos2kml/gcc
make $1 CTARGET="$EXTRAOPTION"
cd ../..

echo; echo % str2str/gcc
cd str2str/gcc
make $1 CTARGET="$EXTRAOPTION"
cd ../..

echo; echo % rnx2rtkp/gcc
cd rnx2rtkp/gcc
make $1 CTARGET="$EXTRAOPTION"
cd ../..

echo; echo % convbin/gcc
cd convbin/gcc
make $1 CTARGET="$EXTRAOPTION"
cd ../..

echo; echo % rtkrcv/gcc
cd rtkrcv/gcc
make $1 EXTRA="$EXTRAOPTION"
cd ../..

