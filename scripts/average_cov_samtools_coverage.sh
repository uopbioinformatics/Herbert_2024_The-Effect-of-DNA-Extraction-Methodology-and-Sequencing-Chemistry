#! /usr/bin/env bash
#
#SBATCH -p main
#SBATCH -N 1
#SBATCH --cpus-per-task=24
#SBATCH -t UNLIMITED
#SBATCH -o [data_dir]/samtools_cov.out
#SBATCH -e [data_dir]/samtools_cov.err

source /nfs/anaconda3/etc/profile.d/conda.sh

# Activate the Conda environment (Samtools v1.19.2)
conda activate samtools

#!/bin/bash

# Define the directory containing your bam files
bam_dir="[data_dir]/"
output_dir="[data_dir]/output/"

# Loop through all bam files in the directory
for bam_file in "$bam_dir"/*.bam; do
    # Get the base name of the file without extension
    base_name=$(basename "$bam_file" .bam)

    samtools index "$bam_file"

    # Run Samtools depth
    samtools coverage "$bam_file" > "${output_dir}/${base_name}_depth.txt"

done
