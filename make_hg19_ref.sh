#!/bin/bash
# download ucsc hg19
mkdir bwa_hg19
cd bwa_hg19
wget http://hgdownload.cse.ucsc.edu/goldenPath/hg19/bigZips/chromFa.tar.gz
tar zvfx chromFa.tar.gz
cat *.fa > hg19.fa
rm chr*.fa
../bwa index -p hg19_bwa_idx -a bwtsw hg19.fa
