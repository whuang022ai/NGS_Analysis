#!/bin/bash
# using fasterq-dump to download fastq
tmp_path='./tmp_'$1 # tmp path name , change if you want
thread_num=24 # your thread number
SRRID=$1 # SRR ID pass from shell
mkdir $tmp_path
export TMPDIR=$tmp_path
fasterq-dump "$SRRID" --split-3 \
--threads $thread_num --temp $tmp_path \
--progress 
rm -r $tmp_path