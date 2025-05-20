#!/bin/bash
#SBATCH --time=1-00:00
#SBATCH --mem=1500G
#SBATCH --mail-user=162298d@acadiau.ca
#SBATCH --mail-type=ALL

module load vcftools
module load java

vcftools --vcf /home/kdeville/projects/def-zmigicov/mig_lab/abc_wgs/gencove/data/master-vcf/Foodimprover.all.variants.new.vcf \
--keep /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/listIDs.txt \
--recode \
--out /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/output_filtered_vcf > /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/log/matchingIDs.log 2> /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/log/matchingIDs.err
