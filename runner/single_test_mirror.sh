#!/bin/sh

test_to_run=$1
file=argument_file.txt.local

if [[-f "$file"]]; then
    echo "$file exists!"
    export file=argument_file.txt.local
else
    echo "argument_file.txt will be used!"
    export file=argument_file.txt
fi

robot -d results/ -A $file -V config/variables_mirror.py -v ISHEADLESSMODE:false -i $test_to_run scr/