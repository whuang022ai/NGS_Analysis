[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

# NGS Analysis
These are some basic examples for doing NGS analysis
for 

[【NGS 次世代基因體資料科學】基礎教學 05 Burrows-Wheeler Aligner BWA 的使用介紹 ](https://www.next-bioinfo.tw/en/?p=248)
# Getting Started & Run

## 1. Load data
### 1.1 get_fastq.sh
Example scripts of download fastqs with fasterq-dump .
### 1.2 reorganize_fastqs.sh
Reorganize R1 R2 to same folder
## 2. BWA mapping
### 2.1 build_bwa.sh
download & compile bwa
### 2.2 make_hg19_ref.sh
download ucsc hg19 and make as bwa reference genome index file
### 2.3 bwa_mapping.sh
bwa with samtools fastq to bam

