# Slurm Evidence Packet Sample

Data source: sample sinfo output  
Mode: read-only  
Human review: required

This sample shows how a Slurm node status summary can separate observed facts, missing evidence, human review questions, and limitations.

## Observed facts

- The sample contains 7 total nodes.
- 4 nodes are in `idle` state.
- 2 nodes are in `alloc` state.
- 1 node is in `drain` state.
- 0 nodes are in `down` state.
- 0 nodes are in `mix` state.
- The `drain` node entry is `gpu-004`.
- Source: `examples/sinfo_sample.txt`.

## Missing evidence

The sample does not include:

- drain reason
- state start time
- previous node state
- related job queue data
- related pending reason data
- maintenance window information
- hardware health data
- scheduler configuration context

Because these fields are missing, this sample cannot determine root cause.

## Human review questions

1. What is the drain reason for `gpu-004`?
2. When did `gpu-004` enter drain state?
3. Was this state observed once, or repeated across snapshots?
4. Is there a related pending job or queue issue?
5. Is there a known maintenance window?
6. Is there related hardware, network, or storage health information?
7. Was any scheduler policy or configuration changed recently?

## Explicit limitations

- Sample data only.
- No live cluster integration.
- No external upload.
- No control commands.
- No Slurm configuration changes.
- No drain, resume, reboot, or node modification.
- No root-cause claim.
- No cost-saving claim.
- No operational improvement claim.
- Human review is required before any operational action.
