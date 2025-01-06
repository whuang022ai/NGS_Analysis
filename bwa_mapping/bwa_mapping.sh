#!/bin/bash
# bwa with samtools fastq to bam

bwa_path="."
ref_path="./bwa_hg19/hg19_bwa_idx"
raw_fq_R1='./testdata/100k_reads_hiseq/TESTX/TESTX_H7YRLADXX_S1_L001_R1_001.fastq.gz'
raw_fq_R2='./testdata/100k_reads_hiseq/TESTX/TESTX_H7YRLADXX_S1_L001_R2_001.fastq.gz'
thread='16'
mkdir ./tmp
$bwa_path/bwa mem -t $thread $ref_path $raw_fq_R1 $raw_fq_R2 2>mapping.log |
   samtools view -@ $thread -q 30 -bS - |
   samtools sort -@ $thread -T ./tmp >out.bam
samtools index out.bam
samtools flagstat out.bam >mapping.stat
rm -r ./tmp
