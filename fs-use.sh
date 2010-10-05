#!/bin/bash

PARTITION="/host"
max_use=$1

partition_info=`df | grep -e " $PARTITION$"`

if [ -z "$partition_info" ]
then
	echo "No $PARTITION partition"
	exit 1
fi

use=`echo "$partition_info" | sed -r -e "s/.+\b(\w+)%.+/\1/"`

if [ $use -gt $max_use ]
then
	echo fail
else
	echo ok
fi

