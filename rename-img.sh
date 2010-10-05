#!/bin/bash

shopt -s nullglob

for f in *.jpg
do
	mv $f `echo $f | sed -r -e "s/\.jpg$/\.JPG/"`
done

