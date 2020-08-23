#file for running multiple parrallell SLiM simulations, uses "-o" option provided by SLiM to name output of SLiM simulation (vcf's mostly) replicates

#define script to be used
slim_file= "/plas1/george.sandler/syn_epi/slim_epi.txt"

#define directory where to write simulation output
directory = "/plas1/george.sandler/syn_epi/equal_pops/slim_subpops_nov.txt"


cd directory
parallel --jobs 20 /plas1/apps/SLiM.2.4.2/bin/slim -d o={} "/plas1/george.sandler/syn_epi/slim_spatial_seln.txt"  ::: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
