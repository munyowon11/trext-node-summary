#!/usr/bin/env bash
set -eu

# trext-node-summary.sh
# Sample-mode Slurm node status summary.
# Read-only: reads a local sample text file and prints a summary.
# This script does not run Slurm commands, send control commands, or upload data.

SAMPLE_FILE="${1:-examples/sinfo_sample.txt}"

if [ "${SAMPLE_FILE}" = "--help" ] || [ "${SAMPLE_FILE}" = "-h" ]; then
  cat <<'EOF'
Usage:
  bash scripts/trext-node-summary.sh [sample-file]

Default sample file:
  examples/sinfo_sample.txt

Mode:
  sample-only
  read-only
  human review required

Safety boundary:
  - does not run Slurm commands
  - does not change Slurm configuration
  - does not drain, resume, reboot, or modify nodes
  - does not send control commands
  - does not upload cluster data
  - does not determine root cause
  - does not claim cost savings or operational improvement
EOF
  exit 0
fi

if [ ! -f "${SAMPLE_FILE}" ]; then
  echo "Error: sample file not found: ${SAMPLE_FILE}" >&2
  exit 1
fi

awk '
BEGIN {
  total = 0
  idle = 0
  alloc = 0
  drain = 0
  down = 0
  mix = 0
}
NR == 1 { next }
NF >= 5 {
  nodes = $4 + 0
  state = tolower($5)
  total += nodes

  if (state == "idle") idle += nodes
  else if (state == "alloc" || state == "allocated") alloc += nodes
  else if (state == "drain" || state == "drng" || state == "drained") drain += nodes
  else if (state == "down") down += nodes
  else if (state == "mix" || state == "mixed") mix += nodes
}
END {
  print "Slurm Node Status Summary"
  print ""
  print "Data source: sample sinfo output"
  print "Mode: read-only"
  print "Human review: required"
  print ""
  print "Cluster status overview"
  print "Total nodes: " total
  print "Idle: " idle
  print "Allocated: " alloc
  print "Drain: " drain
  print "Down: " down
  print "Mixed: " mix
  print ""
  print "Review notes:"
  if (drain > 0) {
    print "- " drain " node(s) are marked drain."
    print "- Check the drain reason before taking operational action."
  } else {
    print "- No drain nodes are present in this sample."
  }
  print "- This summary does not determine root cause."
  print "- This summary does not recommend automated action."
}
' "${SAMPLE_FILE}"
