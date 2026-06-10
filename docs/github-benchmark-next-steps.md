# GitHub Benchmark Next Steps

## Applied

- Local CLI wrapper added.
- Slurm reason fixture added.
- Benchmark ledger added.
- Implementation matrix added.
- UX pattern note added.
- Risk register added.
- README linked the new workflow.

## Commands to run

```bash
bash scripts/trext.sh replay
bash scripts/trext.sh report slurm-node-reasons
bash scripts/trext.sh evidence-index
bash scripts/trext.sh check-boundary
```

## Remaining review

1. Run the four commands locally.
2. Review files generated under `reports/generated/`.
3. Keep generated samples synthetic.
4. Keep GitHub benchmark material separate from customer-signal material.
5. Use direct operator interviews for customer-need updates.
