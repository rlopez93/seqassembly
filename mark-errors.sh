for gene in $(cat genes/.genes)
do
    python mark-error.py genes/$gene-err.fastq genes/$gene.fastq genes/$gene.seq
    python mark-error.py genes/$gene-err.fastq.abundfilt genes/$gene.fastq.abundfilt genes/$gene.seq
done
