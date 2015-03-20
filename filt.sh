cd genes
for gene in $(cat .genes)
do
    filter-abund.py -C 2 ../tables/k16.ct $gene.fastq
done
cd ..
