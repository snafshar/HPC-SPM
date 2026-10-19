#!/usr/bin/env bash
set -u
if [[ $# -ne 1 || ! "$1" =~ ^[0-9]+([_][0-9]+)?$ ]]; then
  printf 'Usage: %s JOB_ID[ _ARRAY_TASK_ID ]\n' "$0" >&2
  exit 2
fi
if ! command -v sacct >/dev/null 2>&1; then
  printf 'Error: sacct is not available in this shell. Run on a cluster login node.\n' >&2
  exit 1
fi
sacct -j "$1" --format=JobID,JobName%24,State,Elapsed,AllocCPUS,ReqMem,MaxRSS,ExitCode
