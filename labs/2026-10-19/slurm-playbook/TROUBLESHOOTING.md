# SLURM Troubleshooting

## Job remains pending

Use `squeue -j JOB_ID` and `scontrol show job JOB_ID` to inspect state and scheduler reason. Pending status can reflect resource availability, limits, dependencies, or account/partition policy.

## Job fails immediately

- Confirm the script uses a valid interpreter and Unix line endings.
- Verify input paths and permissions.
- Check module commands for the local cluster.
- Inspect the first error in the job's stderr file.

## Job runs out of memory

Use accounting tools such as `sacct` when enabled by the site. Reduce memory pressure, stream large datasets, or request an evidence-based larger amount.

## Job reaches its time limit

Measure runtime for a small representative workload. Reduce unnecessary work, parallelize correctly, or request a justified time limit. Do not set an extremely long limit simply to avoid investigating a hang.

## MPI launch errors

Check that the compiler and runtime module match, requested task counts are consistent, and the site's supported `srun` MPI plugin is used. Consult local cluster documentation rather than copying a plugin name blindly.
