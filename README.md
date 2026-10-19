# High-Performance Computing and Structured Parallelism

I use this repository to study parallel decomposition, numerical kernels, threading, and reproducible SLURM experiments.

## Projects

- `jacobi.cpp` — stencil computation
- `parallel-reduce.cpp` — threaded reduction
- [SLURM Playbook](https://github.com/snafshar/HPC-SPM/tree/main/labs/2026-10-19/slurm-playbook) — CPU jobs, arrays, MPI template, accounting helper, memory estimator, and submission checklist

## Reproducibility

Use small test jobs first, document the environment, record job IDs and parameters, and adapt templates to the current cluster policy. The shell/Python checks in the playbook run locally without a cluster; MPI examples require a site-compatible MPI toolchain.
