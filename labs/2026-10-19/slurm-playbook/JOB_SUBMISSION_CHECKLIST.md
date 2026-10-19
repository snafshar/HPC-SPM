# HPC Job Submission Checklist

Before submitting:

- [ ] Confirm the cluster's current policy and available partitions.
- [ ] Set a realistic wall-time limit.
- [ ] Request only the CPUs and memory the application can use.
- [ ] Confirm the working directory and input files exist.
- [ ] Write logs to an appropriate project or scratch location.
- [ ] Avoid secrets, access tokens, or personal data in scripts and output.
- [ ] Check that array task IDs map to valid input records.
- [ ] Confirm how the application exits on errors.
- [ ] Run a small test job before a large production run.
- [ ] Record the job ID, code version, parameters, and environment.

After completion, inspect the exit state and logs, compare requested resources to actual use, and revise future requests based on evidence.
