# GWAS Analysis

print("Loading in libraries")
library(dplyr)
library(tidyverse)
library(GAPIT)

print("Loading in HapMap file")
wgs_data <- read.delim("/home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/outputs/SNPs_hapmap.hmp.txt", header = FALSE)


print("Loading in trait data")
trait_data <- read.csv("/home/kdeville/projects/def-zmigicov/mig_lab/honours_kylie/20250527_filtered_traitdata.csv")


print("Data cleaning")
# Genetic data | this associates all the wrongly set chromosomes to an additional chromosome 18
wgs_data$V3[wgs_data$V3 == 0] <- 18

# Trait data | selecting for the apple_id 
## Running linear traits first (width - circularity)
trait_data_limited <- trait_data %>%
  select(4, 25)


print("Running model")
mlmm_results <- GAPIT(
  Y = trait_data_limited,
  G = wgs_data,
  model = "MLMM",
  SNP.MAF = 0.01,
  PCA.total = 3
)