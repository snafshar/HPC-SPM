#!/usr/bin/env bash
#SBATCH --job-name=mpi-hello
#SBATCH --time=00:05:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --output=mpi-hello-%j.out
#SBATCH --error=mpi-hello-%j.err

set -euo pipefail

# On many clusters, load the site's documented MPI compiler/runtime module here.
# module load <site-specific-mpi-module>
mpicc -O2 -Wall -Wextra -o hello_mpi hello_mpi.c
srun --mpi=pmix ./hello_mpi
