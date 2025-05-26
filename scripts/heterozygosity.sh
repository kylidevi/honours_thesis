#!/bin/bash
#SBATCH --time=1-00:00
#SBATCH --mem=1500G
#SBATCH --mail-user=162298d@acadiau.ca
#SBATCH --mail-type=ALL

module load vcftools
module load java

vcftools --vcf /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/SNPs_maf0_01.recode.vcf --het --out /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/heterozygosity_stats

# Filter out individuals with heterozygosity < 0.90
awk 'NR>1 { if ( (1 - $2/$4) < 0.90 ) print $1 }' heterozygosity_stats.het > samples_to_keep.txt

vcftools --vcf /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/SNPs_maf0_01.recode.vcf --keep /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/samples_to_keep.txt --recode --out /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/heterozygosity_filtered 