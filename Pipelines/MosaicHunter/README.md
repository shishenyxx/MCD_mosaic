# MosaicHunter single mode pipeline for WES or MPAS or any targeted sequencing data

The pipeline is basically following the [MosaicHunter user guide](https://github.com/zzhang526/MosaicHunter/blob/master/docs/MosaicHunterUserGuide.pdf). This Snakefile is a wrapper for the discover phase of MosaicHunter single mode for WES and MPAS and any targeted sequencing data.

## 1. The first step is running the parameter_properties and estimate the depth, alpha and beta for the beta-binomial model.

## 2. The second step is running the single-mode MosaicHunter to get candidate calls.
note that then gender information is critical for MosaicHunter models.
