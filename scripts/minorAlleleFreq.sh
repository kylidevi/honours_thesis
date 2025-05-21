#!/bin/bash
#SBATCH --time=1-00:00
#SBATCH --mem=1500G
#SBATCH --mail-user=162298d@acadiau.ca
#SBATCH --mail-type=ALL

module load vcftools
module load java

vcftools --vcf /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/ output_filtered_vcf.recode.vcf --maf 0.01 --recode --out /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/SNPs_maf0_01 > /home/kdeviller/projects/def-zmigicov/mig_lab/honours_kylie/outputs/log/maf0_01.log 2> /home/kdeviller/projects/def-zmigicov/mig_lab/honours_kylie/outputs/log/maf0_01.err