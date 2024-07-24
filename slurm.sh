#!/bin/sh
#SBATCH --output=calculix.ccxout
#SBATCH --job-name=calculix
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --partition=All

#remove all old output files first
ls|grep -v *.inp|grep -v *.sh|xargs rm -f

hostname 

source /opt/intel/oneapi/setvars.sh

threads=$(nproc)

export OMP_NUM_THREADS=$threads

/opt/calculix/ccx_2.21_MT achtel2

