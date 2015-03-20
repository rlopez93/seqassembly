for gene in $(cat genes.txt)
do
    for file in $(ls genes/$gene/*/*.abundfilt)
    do
        seq="genes/$gene/$gene.seq"

        echo $file
        python mark-error.py "$file".err $file $seq
    done
done
