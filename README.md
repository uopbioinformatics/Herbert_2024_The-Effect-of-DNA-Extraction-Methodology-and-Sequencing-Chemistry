## Introduction
This repository contains the final R Markdown scripts for the analyses reported in 'Impact of Microbiological Molecular Methodologies on Oxford Nanopore Adaptive Sampling in Metagenomic Studies' (Herbert et al., 2025). All scripts have been modified to remove directory names (please change `[data_dir]` for your working directory path), but are otherwise as used for creation of the figures and data analyses reported in the manuscript. 

## Data availability
All raw sequencing data files and sequencing summary files are available from the National Center for Biotechnology Information (NCBI) Sequence Read Archive (SRA) under BioProjects PRJNA934869 and PRJNA934863.


## Analysis files

Scripts for replicating analyses from our manuscript are provided in the [scripts](scripts) directory. The files from our own analyses are provided in the [files](files) directory, which can be used as input for the R markdown scripts. Alternatively, we have also provided text files providing the data processing stages to generate these files from the resulting data following the pipelines outlined in the manuscript. Resulting figures from all R markdown analyses are provided in [figs](figs).

### Effect of Commercial DNA Extraction Methodology on ZMC Compositional Bias

For comparison of commercial DNA extraction kits on compositional bias of ZMC, either first run the programme Emu using parameters detailed within the manuscript on the raw fastq files, or use the output files provided within this repository (in [files](files)) and use the R Markdown script [sq_comp_paper_analysis_published.Rmd](scripts/sq_comp_paper_analysis_published.Rmd) to reproduce statistical values and figures.

### Effect of ONT Sequencing Chemistry on ZMC Metagenomic Assembly

For analysis of the effect of ONT sequencing chemistry (LSK109 vs LSK112) on metagenomic assembly of ZMC data first run the code outlined in [ZMC_Metagenome_assembly_analysis.txt](scripts/ZMC_Metagenome_assembly_analysis.txt) using the raw files provided in the SRA Bioprojects noted above, and use [average_cov_samtools_coverage.sh](scripts/average_cov_samtools_coverage.sh) to get coverage and depth statistics. Figure generation can be done using these files, or alternatively those provided in [files](files), using the [sq_comp_paper_analysis_published.Rmd](scripts/sq_comp_paper_analysis_published.Rmd) R Markdown script.

### Effect of ONT Sequencing Chemistry on Adaptive Sampling

Using the files within the [files](files) directory in this repository, first run the steps outlined in [SC_Adaptive_Analysis.txt](scripts/SC_Adaptive_Analysis.txt) to get files that can be input to the R Markdown script [SC_adaptive_8_hour_bases.Rmd](scripts/SC_adaptive_8_hour_bases.Rmd) to get number of bases used for further analyses. For estimation of coverage and depth, and production of files required to create the Circos plot of coverage, first use the code within [Adaptive_Circos_SC.txt](scripts/Adaptive_Circos_SC.txt) and then use the resulting data (also found in [files](files)) as input for the R Markdown script [RMD_SC_adaptive_analysis.Rmd](scripts/RMD_SC_adaptive_analysis.Rmd).

Please note that the sequencing summary files, and the subset of reads for use in the [SC_Adaptive_Analysis.txt](scripts/SC_Adaptive_Analysis.txt) script are too large to be uploaded to Github, but can be requested by contacting [samuel.robson@port.ac.uk](samuel.robson@port.ac.uk).

