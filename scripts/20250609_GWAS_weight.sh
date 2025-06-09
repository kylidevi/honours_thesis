#!/bin/bash
#SBATCH --time=3-00:00:00
#SBATCH --mem=1510G
#SBATCH --mail-user=162298d@acadiau.ca
#SBATCH --mail-type=ALL

module load r/4.4.0

export R_LIBS_USER="/home/kdeville/projects/def-zmigicov/mig_lab/bin/RPackages"

Rscript /home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/gapit_results_weight/20250609_GWAS_weight.R