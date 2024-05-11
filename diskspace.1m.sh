#!/bin/bash
# Useful example:
#   https://github.com/matryer/bitbar-plugins/blob/master/Time/ts-convert.sh
echo `df -h | grep dev/disk | awk '{print "💾=" $4, "| color=red"}'` # $1 shows the drive dev eg /dev/disk1


