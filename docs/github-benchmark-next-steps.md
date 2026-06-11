# GitHub Benchmark Next Steps

## Applied

- Local CLI wrapper added.
- Slurm reason fixture added.
- Benchmark ledger added.
- Implementation matrix added.
- UX pattern note added.
- Risk register added.
- README linked the new workflow.
- GitHub Actions workflow `TREXT sample check` added.
- CI artifact upload for `reports/generated/` added.

## CI status

`TREXT sample check` run #1 was triggered by push on `main` at commit `bf420f5` and completed with status `Success` in 10 seconds.

`TREXT sample check` run #7 was triggered by push on `main` at commit `35830e2` and completed with status `Success` in 7 seconds, producing 1 artifact.

This confirms the repository sample commands ran successfully in GitHub Actions for the sample-only workflow and that generated sample reports are being uploaded as a CI artifact. It does not validate production HPC data, customer demand, operational outcomes, savings, reliability improvement, or final diagnosis.

## Commands covered by CI

```bash
bash scripts/trext.sh replay
bash scripts/trext.sh report slurm-node-reasons
bash scripts/trext.sh evidence-index
bash scripts/trext.sh check-boundary
```

## CI artifact

The workflow uploads `reports/generated/` as a short-retention artifact named `trext-generated-sample-reports`.

Artifact purpose:

- help reviewers inspect sample-only generated reports;
- avoid committing generated files before human review;
- keep generated outputs separate from customer evidence.

Artifact boundary:

- sample-only;
- generated from repository fixtures;
- not production data;
- not customer validation;
- not operational proof.

## Remaining review

1. Download and review the artifact contents before sharing.
2. Confirm the artifact contains only generated sample reports and the evidence index.
3. Keep generated samples synthetic.
4. Keep GitHub benchmark material separate from customer-signal material.
5. Use direct operator interviews for customer-need updates.
6. Track GitHub Actions runtime warnings in the risk register.
