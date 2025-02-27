#!/bin/bash
#-----------------------------Mail address-----------------------------
#SBATCH --mail-user=yixuan.zhou@wur.nl
#SBATCH --mail-type=FAIL
#-----------------------------Output files-----------------------------
#SBATCH --output=/lustre/nobackup/WUR/ESG/zhou111/WOFOST-Nutrient/HPC_Report/output_%j.txt
#SBATCH --error=/lustre/nobackup/WUR/ESG/zhou111/WOFOST-Nutrient/HPC_Report/error_output_%j.txt
#-----------------------------Other information------------------------

#-----------------------------Required resources-----------------------
#SBATCH --time=200
#SBATCH --mem=250000

#-----------------------------Environment, Operations and Job steps----
#load modules
module load netcdf
#----------------------------Run WOFOST simulations-----------------------
# echo "Current directory: $(pwd)"
 ./wofost-Ave-Yp list_Yangtze_mainrice_Yp.txt meteolist_WFDE5_Yangtze_mainrice.txt 