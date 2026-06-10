# GitHub Benchmark Risk Register

This register keeps GitHub popular-repository material separate from TREXT customer evidence.

| ID | Risk | Control | Status |
|---|---|---|---|
| GH-R1 | Treating popularity as customer demand. | Label the corpus as implementation benchmark only. | Active |
| GH-R2 | Copying broad tool scope into TREXT v0.1. | Keep local bounded commands only. | Active |
| GH-R3 | Adding platform complexity too early. | Keep reports as local text and Markdown files. | Active |
| GH-R4 | Using broad AI wording in public examples. | Prefer evidence report, sample fixture, and human review wording. | Active |
| GH-R5 | Mixing benchmark material with customer-signal ledger. | Keep customer-need LR at 1.0 for this corpus. | Active |

## Allowed use

- CLI layout reference.
- Repository structure reference.
- Local generated output pattern.
- Evidence index habit.
- Boundary check habit.

## Not allowed use

- Customer-pain posterior update.
- Business proof.
- Production-readiness claim.
- External outcome claim.

## Review gate

Before public sharing, run:

```bash
bash scripts/trext.sh check-boundary
```

Human review is still required after the script passes.
