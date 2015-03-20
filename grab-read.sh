#!/bin/bash
mkdir -p genes/
	genes=$(awk '{if ($2 < 5000 && $2 > 4000) print $1}' gene-cnt-sorted.txt | shuf -n 5)

for gene in $genes
do
	grep $gene /data/assembly/foo-single.fastq -A 3 > genes/$gene.fastq
	echo "Generated genes/$gene.fastq"
done
