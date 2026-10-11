"""Compute parallel speedup and efficiency."""


def scaling(serial_seconds, parallel_seconds, workers):
    if serial_seconds <= 0 or parallel_seconds <= 0 or workers <= 0:
        raise ValueError("timings and workers must be positive")
    speedup = serial_seconds / parallel_seconds
    return speedup, speedup / workers


if __name__ == "__main__":
    print(scaling(10.0, 2.8, 4))
