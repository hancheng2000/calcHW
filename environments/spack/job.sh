#!/bin/bash
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -t 00-08:00
#SBATCH --mem-per-cpu=6000
#SBATCH -p highmem
#SBATCH -A venkvis_gpu
#SBATCH -o job.out
#SBATCH --job-name=rlx11pwcf

echo "Job started on `hostname` at `date`"
spack env activate ~/quantum-espresso-7.0
srun --mpi=pmix pw.x < CF.pwi > out.pwo
echo " "
echo "Job Ended at `date`"