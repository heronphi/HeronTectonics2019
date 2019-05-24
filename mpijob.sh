#!/bin/bash
#SBATCH --nodes=10
#SBATCH --ntasks=400
#SBATCH -J ModelM1
#SBATCH --time=1-00:00          # time (DD-HH:MM)
#SBATCH --account=rrg-russ
cd $SLURM_SUBMIT_DIR
module load intel/2018.2
module load intelmpi/2018.2
module load boost/1.66.0
module load aspect/2.0.1

mpirun ../Randell_setup/aspect HeronTectonics_M1.prm
