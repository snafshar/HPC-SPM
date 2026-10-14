"""Simple weak-scaling efficiency calculations."""

def weak_scaling_efficiency(base_time: float, scaled_time: float) -> float:
    if base_time <= 0 or scaled_time <= 0:
        raise ValueError("execution times must be positive")
    return base_time / scaled_time
