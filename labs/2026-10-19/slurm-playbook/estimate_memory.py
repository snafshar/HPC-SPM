"""Estimate batch memory from per-process requirements and overhead."""


import argparse


def estimate_memory_gib(memory_mib, tasks, overhead_fraction):
    if memory_mib <= 0 or tasks <= 0:
        raise ValueError("memory per task and task count must be positive")
    if overhead_fraction < 0 or overhead_fraction > 2:
        raise ValueError("overhead fraction must be between 0 and 2")
    total_mib = memory_mib * tasks * (1 + overhead_fraction)
    return total_mib / 1024


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--mib-per-task", type=int, required=True)
    parser.add_argument("--tasks", type=int, required=True)
    parser.add_argument("--overhead", type=float, default=0.20,
                        help="fraction added as a safety allowance (default 0.20)")
    args = parser.parse_args()
    try:
        gib = estimate_memory_gib(args.mib_per_task, args.tasks, args.overhead)
    except ValueError as error:
        parser.error(str(error))
    print(f"Estimated memory with overhead: {gib:.2f} GiB")
    print("Treat this as an estimate; measure representative workloads and follow site policy.")


if __name__ == "__main__":
    main()
