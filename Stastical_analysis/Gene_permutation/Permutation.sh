#!/bin/bash

cat /2019-12-25_GRCh38-95_auto_protein_coding_genes.csv|cut -d \" -f4>> /2022-03-08-permutation/Human_full_gene_list.txt

my_join.pl -F 1 -f 1 -a Human_full_gene_list.txt -b FCD_list -m|wc -l

for i in {1..10000};do my_join.pl -F 1 -f 1 -a <(shuf Human_full_gene_list.txt|head -n 1686) -b FCD_list -m|wc -l>>10k_permutations;done
