# Checkpoint and Restart Design

A checkpoint should contain enough state to resume safely, plus version, parameters, and input identity.

- Write to a temporary file first.
- Flush and close successfully before replacing the prior checkpoint.
- Validate checkpoint contents before resuming.
- Keep multiple generations if storage permits.
- Avoid having all ranks write one shared file without coordination.
- Test interruption and recovery on a small job first.