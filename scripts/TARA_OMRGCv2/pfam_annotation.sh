#!/bin/bash

set -x
set -e

MPI_RUNNER=mpirun
HMMSEARCH=~/opt/hmmer-3.1b2/bin/hmmsearch
PFAM=/data/DBs/Pfam31/Pfam-A.hmm

"${MPI_RUNNER}" -np 64 "${HMMSEARCH}" --mpi --cut_ga -Z 50275695608 \
  --domtblout only_omrgc2_clu_pfam.out \
  -o only_omrgc2_clu_pfam.log \
  "${PFAM}" \
  only_omrgc2_clu.fasta

# Parse results
grep -v '^#' only_omrgc2_clu_pfam.out > only_omrgc2_clu_pfam.tsv

~/opt/scripts/hmmsearch_parser.sh only_omrgc2_clu_pfam.out 1e-05 0.4 > only_omrgc2_clu_pfam_parsed.tsv
