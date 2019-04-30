#!/bin/sh -e

TEMPERATURE=$(nvidia-settings -q gpucoretemp 2> /dev/null | grep "Attribute 'GPUCoreTemp'" | head -n 1 | awk '{ print $4 }')
echo "${TEMPERATURE%*.}C"
