#!/usr/bin/env bash
#SBATCH --job-name=array-example
#SBATCH --array=0-9
#SBATCH --time=00:02:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=512M
#SBATCH --output=array-%A_%a.out
#SBATCH --error=array-%A_%a.err

set -euo pipefail
task_id="${SLURM_ARRAY_TASK_ID:?This script must run as a SLURM array task}"
printf 'Array job %s, task %s\n' "${SLURM_ARRAY_JOB_ID:-unknown}" "$task_id"

# Replace this with a deterministic input selection for your dataset.
python3 -c 'import sys; print("Example workload for task", sys.argv[1])' "$task_id"
