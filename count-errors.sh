for file in $(ls genes/*err*)
do
    echo $file
    echo "error reads: $(grep 'ERROR' $file -c)"
    echo "correct reads: $(grep 'CORRECT' $file -c)"
    echo "total reads: $(grep 'FBtr' $file -c)"
    echo ""
done
