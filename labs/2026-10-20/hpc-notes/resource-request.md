# Evidence-Based HPC Resource Requests

Measure a representative small run. Request only CPUs, ranks, memory, and time the program can use. Distinguish per-process memory from total job memory. Use approved project/scratch storage, scale one resource dimension at a time, and record job ID plus requested versus actual usage.

Over-requesting can delay scheduling without improving runtime; under-requesting can cause OOM kills or timeouts. Follow site-specific policies.