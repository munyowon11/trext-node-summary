# TREXT Implementation Benchmark Matrix

This matrix converts the GitHub popular-repository benchmark corpus into safe TREXT implementation tasks.

## Decision

Use the corpus for implementation benchmarking only. Do not use it as HPC customer-pain evidence.

| Area | Benchmark lesson | TREXT action | Status |
|---|---|---|---|
| CLI UX | Small tools should be runnable without setup friction. | Add `bash scripts/trext.sh replay`. | Applied |
| Report command | Outputs should be inspectable and file-backed. | Add `bash scripts/trext.sh report slurm-node-reasons`. | Applied |
| Evidence index | Local artifacts should be hashable and reviewable. | Add `bash scripts/trext.sh evidence-index`. | Applied |
| Boundary check | Public examples need claim-risk checks. | Add `bash scripts/trext.sh check-boundary`. | Applied |
| Fixtures | Examples should be synthetic and minimal. | Add `examples/sinfo_R_sample.txt`. | Applied |
| Repository layout | Readers should see purpose before ambition. | Keep docs/examples/scripts separation. | Applied |
| Agent behavior | Autonomous agent framing is too broad for v0.1. | Use bounded commands only. | Applied |
| Database layer | Extra storage can create complexity. | Defer SQLite/DuckDB until evidence volume requires it. | Deferred |
| Web UI | UI can distract from safety boundary. | Defer until sample reports are reviewed. | Deferred |
| External integrations | Live integrations raise security and trust burden. | Keep sample-only mode. | Deferred |

## v0.1 command surface

```bash
bash scripts/trext.sh replay
bash scripts/trext.sh report slurm-node-reasons
bash scripts/trext.sh evidence-index
bash scripts/trext.sh check-boundary
```

## What this supports

- A small local-first CLI skeleton.
- A reproducible sample report workflow.
- A hashable evidence packet habit.
- A public safety boundary for external review.

## What this does not support

- Customer validation.
- Market proof.
- Production readiness.
- Operational automation.
- Final diagnosis of incidents.
- Savings or reliability claims.
