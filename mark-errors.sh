for gene in $(cat genes/.genes)
do
    python mark-error.py genes/$gene-err.fastq genes/$gene.fastq genes/$gene.seq
done
