#!/usr/bin/env bash
set -euo pipefail
here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
bash -n "$here/slurm_cpu_job.sbatch"
bash -n "$here/slurm_array_job.sbatch"
bash -n "$here/slurm_mpi_job.sbatch"
bash -n "$here/summarize_job.sh"
python3 -m py_compile "$here/estimate_memory.py"
python3 "$here/estimate_memory.py" --mib-per-task 1024 --tasks 4 --overhead 0.25 | grep -F 'Estimated memory with overhead: 5.00 GiB'
echo "SLURM Playbook syntax checks passed."
