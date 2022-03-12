#MosaicHunter single mode pipeline for WES or MPAS or any targeted sequencing

The pipeline is basically following the [MosaicHunter user guide](https://github.com/zzhang526/MosaicHunter/blob/master/docs/MosaicHunterUserGuide.pdf)

The first step is running the parameter_properties and estimate the depth, alpha and beta for the beta-binomial model.

The second step is running the single-mode MosaicHunter to get candidate calls.
