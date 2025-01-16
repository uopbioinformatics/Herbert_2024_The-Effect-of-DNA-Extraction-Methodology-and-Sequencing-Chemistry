# Herbert_2024_The-Effect-of-DNA-Extraction-Methodology-and-Sequencing-Chemistry
## Introduction
This repository contains the final R Markdown scripts for the analyses reported in 'Impacts of Microbial Molecular Methodology on Adaptive Sampling, 16S rRNA Gene Amplicon Profiling, and Metagenomics' (Herbert et al., 2025). All scripts have been modified to remove directory names (please change `[data_dir]` for your working directory path), but are otherwise as used for creation of the figures and data analyses reported in the manuscript. 

## Data availability
All raw sequencing data files are available from the National Center for Biotechnology Information (NCBI) Sequence Read Archive (SRA) under BioProjects PRJNA934869 and PRJNA934863.


## Analysis files

Scripts for replicating analyses from our manuscript are provided in the `scripts/` directory. The files from our own analyses are provided in the `files/` directory, which can be used as input for the R markdown scripts. Alternatively, we have also provided text files providing the data processing stages to generate these files from the resulting data following the pipelines outlined in the manuscript. Resulting figures from all R markdown analyses are provided in `figs/`.

### Effect of Commercial DNA Extraction Methodology on ZMC Compositional Bias

For comparison of commercial DNA extraction kits on compositional bias of ZMC, either first run the programme Emu using parameters detailed within the manuscript on the raw fastq files, or use the output files provided within this repository (in `files/`) and use the R Markdown script `sq_comp_paper_analysis_published.Rmd` to reproduce statistical values and figures.

### Effect of ONT Sequencing Chemistry on ZMC Metagenomic Assembly

For analysis of the effect of ONT sequencing chemistry (LSK109 vs LSK112) on metagenomic assembly of ZMC data first run the code outlined in `ZMC_Metagenomic_assessment_analysis.txt` using the raw files provided in the SRA Bioprojects noted above, and use `average_cov_samtools_coverage.sh` to get coverage and depth statistics. Figure generation can be done using these files, or alternatively those provided in `files/`, using the `sq_comp_paper_analysis_published.Rmd` R Markdown script.

### Effect of ONT Sequencing Chemistry on Adaptive Sampling

Using the files within the `files/` directory in this repository, first run the steps outlined in `SC_Adaptive_Analysis.txt` to get files that can be input to the R Markdown script `SC_adaptive_analysis.Rmd` to get number of bases used for further analyses. For estimation of coverage and depth, and production of files required to create the Circos plot of coverage, first use the code within `Adaptive_Circos_SC.txt` and then use the resulting data (also found in `files/`) as input for the R Markdown script `RMD_SC_adaptive_analysis.Rmd`.

