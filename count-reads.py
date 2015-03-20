genes = [line.strip() for line in open('genes.txt')]

genecnt = {}

for gene in genes:
    genecnt[gene] = 0

for line in open('/data/assembly/foo-single.fastq'):
    if 'FBtr' not in line:
        continue
    i = line.index('FBtr')
    gene = line[i:i+11]

    genecnt[gene] += 1

out = open('gene-cnt-unsorted.txt', 'w')

for key, value in genecnt.items():
    print >>out, key, value
