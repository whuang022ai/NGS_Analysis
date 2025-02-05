# NGS Analysis
These are some basic examples for doing NGS analysis

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