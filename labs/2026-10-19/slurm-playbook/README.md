# SLURM Playbook

A portable starter kit for learning batch scheduling concepts on a shared HPC cluster. The templates avoid assuming a particular partition, module name, or account; adapt those values to the local cluster documentation.

## Files

- `slurm_cpu_job.sbatch`: single-node CPU example.
- `slurm_array_job.sbatch`: independent task array.
- `slurm_mpi_job.sbatch` and `hello_mpi.c`: MPI hello-world example.
- `summarize_job.sh`: query accounting data for a job ID.
- `estimate_memory.py`: calculate a requested memory budget with a safety factor.
- `JOB_SUBMISSION_CHECKLIST.md`: pre-flight checklist.
- `TROUBLESHOOTING.md`: common scheduler failures.
- `check_scripts.sh`: local syntax checks that do not require SLURM or MPI.

## Important

Check cluster-specific policies before submitting jobs. Request realistic CPU, memory, and wall-time values, avoid writing large temporary files to shared home storage, and never put credentials in job scripts or logs.
