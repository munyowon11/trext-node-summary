# UX Patterns from GitHub Benchmark Corpus

This note records TREXT-safe UX patterns derived from the GitHub popular-repository benchmark corpus.

## Pattern 1: one-command sample replay

Users should be able to run a sample without live infrastructure.

```bash
bash scripts/trext.sh replay
```

Expected behavior:

- reads repository fixture only;
- writes a generated report under `reports/generated/`;
- prints a short human-readable summary;
- preserves read-only and sample-only boundaries.

## Pattern 2: explicit report command

A report should be named by evidence type, not by broad product promise.

```bash
bash scripts/trext.sh report slurm-node-reasons
```

Expected behavior:

- reads `examples/sinfo_R_sample.txt`;
- creates `reports/generated/slurm-node-reasons-report.md`;
- lists evidence candidates;
- asks human-review questions.

## Pattern 3: evidence index before platform

A local hash manifest is enough for early review.

```bash
bash scripts/trext.sh evidence-index
```

Expected behavior:

- records SHA-256 hashes where local tools exist;
- keeps files inspectable;
- avoids database or SaaS complexity for v0.1.

## Pattern 4: boundary check before sharing

Public examples should be checked for claim-risk language.

```bash
bash scripts/trext.sh check-boundary
```

Expected behavior:

- scans README, docs, and examples for selected claim-risk phrases;
- fails before public sharing when a risky phrase appears;
- does not replace human review.

## Pattern 5: bounded commands

TREXT v0.1 should present bounded local commands rather than broad autonomy.

Safe wording:

- evidence report;
- read-only;
- sample fixture;
- human review required;
- candidate evidence;
- additional confirmation needed.
