# SLURM Array Design

Use arrays for independent tasks with a clear mapping from task ID to input record. Validate manifest existence and index bounds before computation. Choose a concurrency cap if tasks could overwhelm shared storage. Write logs with both array job ID and task ID.

At completion, inspect failed task IDs and retry only safe, idempotent work. Do not assume every task has the same runtime or memory requirement.