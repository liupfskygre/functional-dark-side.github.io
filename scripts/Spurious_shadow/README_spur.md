### Identification of spurious and shadow shadow_orfs

"spur_shadow_orfs.sh":
  - input: ORFs fasta file "data/gene_prediction/TARA_OSD_GOS_malaspina_hmp_orf.fasta.gz", the AntiFam database downloadable from ftp://ftp.ebi.ac.uk/pub/databases/Pfam/AntiFam/,
  - output: tab-formatted table "data/spurious_and_shadows/marine_hmp_info_shadow_spurious.tsv.gz", with 7 fields: fields: <orf_name> <orf_length> <cl_name> <cl_size> <prop_shadow (in the cluster)> <is.shadow> <is.spurious>

"shadow_orfs.r":
  - input: ORFs sequence ids/names
  - output: tab-formatted file containing the identified shadow ORFs; 11 fileds: <contig_name> <orf1_name> <strand1> <start1> <end1> <orf2_name> <strand2> <start2> <end2> <overlap>
