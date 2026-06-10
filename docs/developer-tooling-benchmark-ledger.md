# Developer Tooling Benchmark Ledger

This ledger records how the GitHub popular-repository screenshot corpus may be reused for TREXT implementation benchmarking.

## Scope

- Evidence type: public developer-tooling signal.
- Customer-signal status: not customer evidence.
- Use in Bayesian customer-need calculation: no update, LR = 1.0.
- Business-claim status: no business claim allowed.
- Allowed use: implementation, repository structure, CLI UX, local-first report workflow, documentation pattern reference.

## Reuse rule

The corpus may support questions like:

- What does a developer-friendly local CLI look like?
- How should a small repository organize examples, scripts, docs, and generated reports?
- Which UX patterns reduce friction for technical review?

The corpus must not be used to support claims about HPC operator demand, customer validation, market proof, production readiness, savings, reliability improvement, or automatic operations.

## TREXT-safe benchmark observations

| ID | Observation | Safe TREXT reuse | Customer-need LR |
|---|---|---|---:|
| GH-B1 | CLI-first developer tools are easy to inspect and run locally. | Add a small `scripts/trext.sh` command surface. | 1.0 |
| GH-B2 | Popular tools often include examples and deterministic sample outputs. | Keep fixture-based sample mode and generated report examples. | 1.0 |
| GH-B3 | Search, database, and monitoring repos emphasize local reproducibility. | Prefer local evidence index before any platform or service idea. | 1.0 |
| GH-B4 | Agent-related repos are visible, but often broad. | Use bounded commands, not open-ended autonomous behavior. | 1.0 |
| GH-B5 | Security and supply-chain repos emphasize safe boundaries. | Keep claim-boundary and sensitive-data warnings visible. | 1.0 |

## Required labels

```yaml
customer_signal: false
implementation_benchmark: true
official_customer_evidence: false
business_claim_allowed: false
LR_for_HPC_customer_need: 1.0
human_review_required: true
```

## Boundary

This benchmark ledger is a build aid only. It does not update the TREXT customer-pain posterior and does not support external product claims.
