#!/bin/bash

shopt -s nullglob

for f in *.jpg
do
	mv $f `echo $f | sed -e "s/\.jpg$/\.JPG/"`
done

