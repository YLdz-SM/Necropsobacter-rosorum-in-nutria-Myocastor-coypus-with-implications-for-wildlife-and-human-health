16S Phylogeny:

Command 01: compute the tree without clustering method:

iqtree2 -s 16S_Diversity_Maffted_V3.fasta -m GTR  -nt AUTO -mem 16G -pre no_clock

Command 02: compute the tree wit clustering method:

iqtree2 -s 16S_Diversity_Maffted_V3.fasta -m GTR  -nt AUTO -mem 16G -pre with_clock -te no_clock.treefile -rcluster 10 -lmap 1

Command 03: test the clock hypothesis:

python3 /Users/younes/Desktop/Last_Revision/Pasteurellaceae-Phylogenomic-Analysis/IQTREESCREP/Clock_Test.py

*********************************************************************************************************************************************

Core genome-based phylogeny:

Command 01: compute the tree without clustering method:

iqtree2 -s pangenome.fasta -m LG+G4  -nt AUTO -mem 16G -pre no_clock

Command 02: compute the tree wit clustering method:

iqtree2 -s pangenome.fasta -m LG+G4  -nt AUTO -mem 16G -pre with_clock -te no_clock.treefile -rcluster 10 -lmap 1

Command 03: test the clock hypothesis:

python3 /Users/younes/Desktop/Last_Revision/Pasteurellaceae-Phylogenomic-Analysis/IQTREESCREP/Clock_Test.py
