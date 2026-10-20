# CPU Affinity and Oversubscription

A process may see more CPUs than it can use under scheduler or container constraints. Inspect the allocated CPU set and compare it with worker thread count. Avoid launching many more threads than allocated CPUs unless justified by the workload and site policy.

For hybrid MPI/OpenMP jobs, document ranks per node, threads per rank, and their product. Test affinity on the target cluster rather than copying settings blindly.