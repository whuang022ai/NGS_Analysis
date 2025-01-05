#!/bin/bash
# download & compile bwa
wget https://github.com/lh3/bwa/archive/refs/tags/v0.7.17.tar.gz
tar -xzf v0.7.17.tar.gz
cd bwa-0.7.17
sed -i 's/const\suint8_t\srle_auxtab/extern const uint8_t rle_auxtab/g' rle.h
# bug fix see also
#https://github.com/lh3/bwa/commit/2a1ae7b6f34a96ea25be007ac9d91e57e9d32284

make
mv bwa ../
cd ../
rm -r bwa-0.7.17
rm v0.7.17.tar.gz
./bwa
