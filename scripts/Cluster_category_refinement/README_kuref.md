### Cluster categories (Known-Unknown) refinement

1. Unknown refinement ("unkn_refinement.sh")
  - Input:"data/cluster_classification/marine_hmp_eu_ids.txt", then processed through "class_ffindex_files.sh" to create the hhblits DB, and the Uniclust DB.
  - Output:"data/cluster_classification/unkn_refinement/marine_hmp_new_eu-gu-kwp_ids.txt"
2. Known refinement ("known_refinement.sh")
  - Input:"data/cluster_classification/unkn_refinement/marine_hmp_new_kwp_ids.txt", processed through "class_ffindex_files.sh" to create the hhblits DB, and the Pfam DB.
  - Output:"data/cluster_classification/known_refinement/marine_hmp_new_kwp-k-gu_ids.txt"

Final output: "data/cluster_categories/marine_hmp_k-kwp-gu-eu_ids.txt"
