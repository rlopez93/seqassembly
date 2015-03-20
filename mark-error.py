import screed
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('output_sequence_filename')
parser.add_argument('input_sequence_filename')
parser.add_argument('original_sequence_filename')
args = parser.parse_args()

outfile = open(args.output_sequence_filename, 'w')
origseqfile = open(args.original_sequence_filename)

orig_sequence = origseqfile.readline().upper()

for read in screed.open(args.input_sequence_filename):
    name = read['name']
    sequence = read['sequence']
    if sequence.upper() in orig_sequence:
        name = name + " CORRECT"
    else:
        name = name + " ERROR"

    print >>outfile, "@{}".format(name)
    print >>outfile, sequence
    print >>outfile, "+"
    print >>outfile, read['accuracy']
