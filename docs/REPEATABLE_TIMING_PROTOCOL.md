# Repeatable timing protocol

1. Record hardware, software versions, process count, and input size.
2. Separate compilation and setup from the timed region unless they are the subject of the experiment.
3. Run a warm-up when the environment has one-time initialization costs.
4. Collect multiple repetitions and preserve raw timings.
5. Report median and spread as well as the best result.
6. Note contention, background load, and scheduler placement where known.
7. Re-run the baseline when the environment changes.