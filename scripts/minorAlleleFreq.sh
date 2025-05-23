#!/bin/bash
#SBATCH --time=1-00:00
#SBATCH --mem=1500G
#SBATCH --mail-user=162298d@acadiau.ca
#SBATCH --mail-type=ALL

module load vcftools
module load java

input_vcf="/home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/output_filtered_vcf.recode.vcf"

vcftools --vcf $input_vcf \
--maf 0.01 \
--recode \
--out /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/SNPs_maf0_01 > /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/log/SNPs_maf0_01.log 2> /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/log/SNPs_maf0_01.err