#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --mem=1510G
#SBATCH --mail-user=162298d@acadiau.ca
#SBATCH --mail-type=ALL

module load java
export JAVA_TOOL_OPTIONS="-Xmx1490g"

/home/kdeville/projects/def-zmigicov/mig_lab/bin/tassel/V5.2.94/run_pipeline.pl -Xmx1490g -fork1 -vcf /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/heterozygosity_filtered.recode.vcf -export /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/SNPs_hapmap -exportType Hapmap 