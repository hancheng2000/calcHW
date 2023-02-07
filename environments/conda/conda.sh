#!/bin/bash
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 00-00:15
#SBATCH -p gpu
#SBATCH --gpus-per-node=1
#SBATCH -c 2
#SBATCH --mem=2G
#SBATCH -A venkvis_gpu

#SBATCH -o conda_MNIST.out
#SBATCH -e error.err

srun python mnist.py
