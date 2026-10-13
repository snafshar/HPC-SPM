"""Prepare strong-scaling speedup and efficiency values."""


def strong_scaling(serial_time, parallel_times):
    if serial_time <= 0 or not parallel_times:
        raise ValueError("serial time must be positive and parallel times non-empty")
    output = []
    for workers, elapsed in sorted(parallel_times.items()):
        if workers <= 0 or elapsed <= 0:
            raise ValueError("worker counts and elapsed times must be positive")
        speedup = serial_time / elapsed
        output.append({"workers": workers, "seconds": elapsed,
                       "speedup": speedup, "efficiency": speedup / workers})
    return output
