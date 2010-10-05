#!/bin/bash

PARTITION="/home"

max_use=$1

partition_info=`df | tr -s ' ' | cut -d' ' -f5,6 | grep "$PARTITION"`

if [ -z "$partition_info" ]
then
	echo "No $PARTITION partition"
	exit 1
fi

use=`echo $partition_info | cut -f1 -d' ' | tr -d '%'`

if [ $use -gt $max_use ]
then
	echo fail
else
	echo ok
fi

