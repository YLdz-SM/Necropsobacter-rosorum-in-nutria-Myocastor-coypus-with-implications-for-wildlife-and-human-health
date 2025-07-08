# Pasteurellaceae Phylogenomic Analysis


## Overview

This repository contains the complete bioinformatics pipeline and analysis code for the phylogenomic study of Pasteurellaceae bacteria, focusing on genetic epidemiology and geographic distribution patterns. The analysis integrates core genome phylogeny, 16S rRNA gene analysis, pangenome characterization, and geographic mapping to understand the evolutionary relationships and zoonotic potential of Pasteurellaceae species.

### Key Features

- **Comprehensive phylogenetic analysis** using both 16S rRNA and core genome approaches
- **Pangenome analysis** to identify core, accessory, and unique genes
- **Geographic mapping and visualization** of strain distributions
- **Host affinity analysis** to identify zoonotic potential
- **Reproducible workflow** with detailed documentation and logging
- **Interactive visualizations** for data exploration

### Research Context

The Pasteurellaceae family comprises important bacterial pathogens affecting both humans and animals. Understanding their phylogenetic relationships, geographic distribution, and host specificity is crucial for epidemiological surveillance and public health preparedness. This analysis provides insights into the evolutionary history and zoonotic potential of these organisms through comprehensive genomic analysis.

## Repository Structure



```
Pasteurellaceae-Phylogenomic-Analysis/
├── README.md                          # This file - comprehensive project documentation
├── requirements.txt                   # Python package dependencies
│
├── scripts/                          # Analysis scripts organized by workflow step
│   ├── 01_genome_annotation/
│   │   ├── prokka_annotation.sh      # Automated genome annotation using Prokka
│   │   └── annotation_summary.py     # Summarize annotation results
│   ├── 02_sequence_alignment/
│   │   ├── mafft_alignment.sh        # Multiple sequence alignment using MAFFT
│   │   └── alignment_processing.py   # Process and validate alignments
│   ├── 03_phylogenetic_analysis/
│   │   ├── iqtree_analysis.sh        # Maximum likelihood phylogeny with IQ-TREE
│   │   ├── roary_pangenome.sh        # Pangenome analysis using Roary
│   │   └── tree_processing.py        # Tree manipulation and analysis
│   ├── 04_geographic_analysis/
│   │   ├── geographic_mapping.py     # Geocoding and coordinate processing
│   │   ├── coordinate_processing.py  # Geographic data validation
│   │   └── visualization_scripts.py  # Geographic visualization functions
│   └── 05_data_visualization/
│       ├── phylogeny_visualization.py # Phylogenetic tree plotting
│       ├── geographic_plots.py       # Geographic distribution maps
│       └── interactive_maps.py       # Interactive Plotly visualizations
│
├── data/                             # Input data and processed datasets
│   ├── IQTREE_phylogenies/
│   │   ├── genomes/                  # IQTREE output
│   │   └── 16S_sequences/            # IQTREE output
│   ├── alignments/
│   │   ├── core_genome_alignment.fasta    # Core genome multiple sequence alignment
│   │   ├── 16S_alignment.fasta            # 16S rRNA gene alignment
│   │   └── individual_gene_alignments/    # Individual gene alignments
│   ├── geographic_data/
│   │   ├── strain_metadata.xlsx           # Strain metadata with geographic info
│   │   ├── country_coordinates.xlsx       # Country coordinate mapping
│   │   └── host_information.xlsx          # Host-pathogen relationship data
│   │   └── Other files
│   └── reference_data/
│       ├── reference_genomes/             # Reference genome sequences
│       └── taxonomy_files/                # Taxonomic classification files
│
├── notebooks/                        # Jupyter notebooks for interactive analysis
│   ├── Custum script for the N rosorum study.ipynb   # All codes used for Data cleaning and preparation and analysis
│   ├── Template_code__Geographic_Mapping.ipynb       # Geographic analysis and mapping template code
│   └── Template_code_Data_Preprocessing.ipynb        # Data visualization and plotting template code
│
└── docs/                             # Additional documentation
    ├── methodology.md                # Detailed methodology description
    └── software_versions.md          # Software versions and dependencies


```

## Quick Start

### Prerequisites

Before running the analysis, ensure you have the following software installed:

- **Python 3.8+** with pip package manager
- **Conda** or **Mamba** package manager (recommended for bioinformatics tools)
- **Git** for version control

### Installation

1. **Clone the repository:**
   ```bash
   gh repo clone YLdz-SM/Necropsobacter-rosorum-in-nutria-Myocastor-coypus-with-implications-for-wildlife-and-human-health
   cd Necropsobacter-rosorum-in-nutria-Myocastor-coypus-with-implications-for-wildlife-and-human-health
   ```

2. **Create and activate a conda environment:**
   ```bash
   conda create -n pasteurella-analysis python=3.8
   conda activate pasteurella-analysis
   ```

3. **Install bioinformatics tools:**
   ```bash
   conda install -c bioconda prokka mafft iqtree roary
   ```

4. **Install Python dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

5. **Verify installation:**
   ```bash
   prokka --version
   mafft --version
   iqtree --version
   roary --version
   ```

## Analysis Workflow



Follow the Material and methods indicated in (DOI: )



**Important note on tree rooting:** Both maximum likelihood trees (16S rRNA and core genome-based) are midpoint-rooted. This approach was selected due to the absence of calibrated divergence data within the Pasteurellaceae family and the high genetic similarity among its members. Midpoint rooting assumes relatively constant evolutionary rates across lineages (molecular clock assumption). While this assumption may not hold perfectly for all lineages, it provides a reasonable rooting strategy given the constraints of the dataset and the close relationships among Pasteurellaceae members.

### Phase 4: Geographic Analysis

**Purpose:** Process geographic metadata and perform spatial analysis.

**Notebook:** `Custum script for the N rosorum study.ipynb`


**Key steps:**
1. Geocoding country names to latitude/longitude coordinates
2. Host affinity analysis (Human/Animal/Zoonotic classification)
3. Geographic distribution mapping
4. Zoonotic potential assessment


**Output:** 
- Main figures: `results/figures/main_figures/`
- Supplementary figures: `results/figures/supplementary_figures/`
- Interactive plots: `results/figures/interactive_plots/`
- Statistical analysis results: `results/statistical_analysis/`



**Key analyses:**
- Phylogenetic tree visualization with bootstrap support
- Geographic distribution maps
- Host affinity analysis
- Ancestral state reconstruction
- Phylogenetic diversity metrics

