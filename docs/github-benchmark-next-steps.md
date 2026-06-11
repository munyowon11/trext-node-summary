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

## CI status

`TREXT sample check` run #1 was triggered by push on `main` at commit `bf420f5` and completed with status `Success` in 10 seconds.

This confirms the repository sample commands ran successfully in GitHub Actions for the sample-only workflow. It does not validate production HPC data, customer demand, operational outcomes, savings, reliability improvement, or final diagnosis.

## Commands covered by CI

```bash
bash scripts/trext.sh replay
bash scripts/trext.sh report slurm-node-reasons
bash scripts/trext.sh evidence-index
bash scripts/trext.sh check-boundary
```

## Remaining review

1. Review files generated under `reports/generated/` locally before committing any generated samples.
2. Keep generated samples synthetic.
3. Keep GitHub benchmark material separate from customer-signal material.
4. Use direct operator interviews for customer-need updates.
5. Track GitHub Actions runtime warnings in the risk register.
