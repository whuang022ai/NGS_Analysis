#!/bin/bash
fpath=$1
fname=$(basename $fpath)
tar -cf - $fpath | pv | zip > $fname.zip
