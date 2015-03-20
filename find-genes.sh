#!/bin/bash
awk -F : '/FBtr[0-9]+/ {print $3}' /data/assembly/foo-single.fastq | sort -u > genes.txt
