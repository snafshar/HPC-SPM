#!/usr/bin/env bash
#SBATCH --job-name=cpu-example
#SBATCH --time=00:05:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=1G
#SBATCH --output=cpu-example-%j.out
#SBATCH --error=cpu-example-%j.err

set -euo pipefail
printf 'Job ID: %s\n' "${SLURM_JOB_ID:-local-test}"
printf 'Node list: %s\n' "${SLURM_JOB_NODELIST:-not-scheduled}"
printf 'CPUs per task: %s\n' "${SLURM_CPUS_PER_TASK:-unknown}"
printf 'Start time: %s\n' "$(date -Is)"
hostname
python3 --version
printf 'Job finished at %s\n' "$(date -Is)"
