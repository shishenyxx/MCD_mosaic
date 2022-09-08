# MCD_mosaic


Malformations of cortical development (MCD) are neurological conditions displaying focal disruption of cortical architecture and disrupted cellular organization that occurs during embryogenesis. This repository contains the pipelines for data processing, codes for data analysis and plotting for the large-scale MCD data analysis.
Data for this project is available on NIMH Data Archive (NDA) under study [accession 1484](https://nda.nih.gov/study.html?id=1484), and on NIMH Sequence Read Archive (SRA) under accession number [PRJNA821916](https://trace.ncbi.nlm.nih.gov/Traces/study/?acc=PRJNA821916&o=acc_s%3Aa).

-----------------------------------

### 1. Pipelines for processing WES data
The processing of the WES data followed the [BSMN common pipeline](https://github.com/bsmn/bsmn-pipeline), of which the WES part is described also in the [BSMN common experinment paper](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-021-02285-3). 

-----------------------------------

### 2. Pipelines for processing MPAS data
Alignment and pre-processing of the MPAS data were derived the published [MPAS pipeline](https://github.com/shishenyxx/Adult_brain_somatic_mosaicism/tree/master/pipelines/MPAS_and_snMPAS_processing_pipeline). 

The WES and MPAS pipelines were further implemented into a [generalized snakemake pipeline version](https://github.com/Gleeson-Lab/wxs_pipeline).

-----------------------------------

### 3. Mosaic variants calling
Processed data from WES and MPAS were subjected to different pipelines and candidate mosaic variants were collected: sample-specific variants were called using the paired modes using the [BSMN common pipeline](https://github.com/bsmn/bsmn-pipeline); sample-shared and single mode variants were either called with GATK haplotyper polidy50 according to the [BSMN common pipeline](https://github.com/bsmn/bsmn-pipeline) (WES only), or [MosaicHunter](https://github.com/shishenyxx/MCD_mosaic/tree/main/Pipelines/MosaicHunter), or [MuTect2 single mode]() followed by [MosaicForecast]() or [DeepMosaic](https://github.com/Virginiaxu/DeepMosaic). 

Passed variants were further annotated with [a pipeline we previously described](), and information including the COSMIC89, gnomAD genome, avsnp150, CADD 1.3, eigen value, and fathmm by ANNOVAR command `./table_annovar.pl input.avinput /humandb/ -buildver hg19 -out output_annotated -remove -protocol refGene,gnomad_genome,avsnp150,cosmic89,cadd13,eigen,fathmm -operation g,f,f,f,f,f,f -nastring .`

-----------------------------------

### 4. Plotting
[Codes](https://github.com/shishenyxx/MCD_mosaic/tree/main/Plotting) and inputs for the plots in the project.

#### Oncoplot
[`oncoplot.ipynb`](https://github.com/shishenyxx/MCD_mosaic/blob/main/Plotting/oncoplot.ipynb) describes codes for oncoplot presented in Fig.1e  
[`oncoplot.maf`](https://github.com/shishenyxx/MCD_mosaic/blob/main/Plotting/oncoplot.maf) contains the source data.


#### Genotype-phenotype association
[`Genotype_phenotype_association.ipynb`](https://github.com/shishenyxx/MCD_mosaic/blob/main/Plotting/Genotype_phenotype_association.ipynb) contains R codes for Fig.4.

[`Supplementary Table 4`](https://github.com/shishenyxx/MCD_mosaic/blob/main/Plotting/Supplementary%20Table%204.csv) is the source data for the association analyse.


#### Single-nuclei RNA sequencing (snRNAseq) in the fetal cortex from [Nowakowski et al 2017 Science](https://www.science.org/doi/10.1126/science.aap8809)  
[`Fetal_cortex_snRNAseq.ipynb`](https://github.com/shishenyxx/MCD_mosaic/blob/main/Plotting/Fetal_cortex_snRNAseq.ipynb) contains R codes used for generating Fig.5.


#### snRNAseq in MCD brain tissues
[`MCD_snRNAseq.ipynb`](https://github.com/shishenyxx/MCD_mosaic/blob/main/Plotting/MCD_snRNAseq.ipynb) contains R codes used for generating Fig.6, Extended Data Fig.7, Extended Data Fig.9, and Supplementary Table 5.

-----------------------------------

### 5. Statistical analysis

[Codes](https://github.com/shishenyxx/MCD_mosaic/tree/main/Stastical_analysis) as well as some intermediate files and scripts for the statistical analysis of the project.

-----------------------------------

### 6. Contact:

:email: Dr. Changuk Chung: [chchung@health.ucsd.edu](mailto:chchung@health.ucsd.edu)

:email: Dr. Xiaoxu Yang: [xiy010@health.ucsd.edu](mailto:xiy010@health.ucsd.edu), [yangxiaoxu-shishen@hotmail.com](mailto:yangxiaoxu-shishen@hotmail.com)

:email: Prof. Joseph Gleeson: [jogleeson@health.ucsd.edu](mailto:jogleeson@health.ucsd.edu), or the Gleeson lab [contact@gleesonlab.org](mailto:contact@gleesonlab.org)

[Prof. Joseph Gleeson's lab at the University of California San Diego and Rady Children's Institute for Genomic Medicine](http://www.gleesonlab.org/index.html)

-----------------------------------

### 7. Cite the data and codes:

 <b>Chung C & Yang X, <i>et al.,</i> Gleeson JG. [Comprehensive multiomic profiling of somatic mutations in malformations of cortical development.](https://www.biorxiv.org/content/10.1101/2022.04.07.487401v2.full) 2021. (<i>bioRxiv</i>, DOI:[10.1101/2022.04.07.487401](https://doi.org/10.1101/2022.04.07.487401))</b>


