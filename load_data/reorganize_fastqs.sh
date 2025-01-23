#!/bin/bash
# put xxx_R1.fastq.gz & xxx_R2.fastq.gz to xxx/

for file in *.fastq.gz; do
    folder_name=$(echo $file | sed 's/_R[12].fastq.gz//')
    mkdir -p "$folder_name"
    mv "$file" "$folder_name/"
done