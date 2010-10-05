#!/bin/bash

mod=$1

lsmod | grep -P -e "(\S+,)?$mod(,\S+)?$" | sed -r -e "s/^(\w+).*/\1/"

