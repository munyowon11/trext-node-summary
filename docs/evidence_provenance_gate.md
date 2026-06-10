# Evidence Provenance Gate

A lightweight guardrail for this public repository, applied before any
external-use, business-use, or broader public-facing change is merged.

This is a **guardrail document**. It is not customer-validation evidence,
performance evidence, savings evidence, or production-readiness evidence.
The controls below reduce the risk of publishing unsupported claims. They do
**not** prove perfect security, market validation, production readiness,
customer validation, or operational improvement.

## Required rule

Any real-world value — a benchmark, fee, market figure, operational claim, or
performance claim — may only be used when it is backed by **source evidence**,
such as:

- an official source,
- original text,
- a screenshot,
- a document, or
- a reproducible artifact committed to this repository.

If that evidence is not present, the value is not a business fact and must be
labeled accordingly (see fallback labels).

## Prohibited

The following must not appear as real-world facts in external-facing material:

- arbitrary numbers,
- plausible-looking fees without a source,
- unsupported benchmarks,
- unsupported market-size estimates,
- unsupported savings or performance claims,
- test fixture values used as business facts,
- sample / mock / synthetic data presented as real evidence.

## Fallback labels

When source evidence is insufficient, the value must carry one of these labels
so a reader cannot mistake it for a verified fact:

| Label | Use when |
|---|---|
| `sample` | Illustrative value shown for explanation only. |
| `fixture` | Value used by tests, not a real-world measurement. |
| `assumed` | A working assumption, not yet confirmed. |
| `placeholder` | Temporary stand-in to be replaced by a sourced value. |
| `synthetic` | Generated data, not collected from a real system. |
| `unsupported_claim` | A claim that currently has no source evidence. |

## Pre-merge gate

Before merge, the change must explicitly distinguish three categories:

1. **Real, externally usable information** — has source evidence.
2. **Test fixture information** — exists to exercise code, not to inform readers.
3. **Sample / mock / synthetic information** — illustrative only.

### Block merge if

- sample / mock / synthetic / fixture data appears as a business fact,
- unsupported numbers, fees, benchmarks, market sizes, or savings claims appear,
- source evidence is missing for a real-world claim, or
- publication safety has not been reviewed.

## Artifact revalidation rule

When an artifact moves closer to external use, re-run the following — earlier
results do not carry over once the material or audience changes:

- re-run the secret scan,
- re-run the public-safe scan,
- confirm the read-only boundary still holds,
- remove internal strategy from external material,
- confirm that sample / fixture values are not presented as business facts.

These steps reduce risk. They are not a guarantee.

## Pre-merge checklist

Copy this into the pull request before requesting external-use merge:

```
- [ ] Real-world claims have source evidence (official source, text,
      screenshot, document, or committed artifact).
- [ ] Sample / fixture / synthetic values are labeled and not shown as
      business facts.
- [ ] No arbitrary numbers, unsourced fees, benchmarks, market sizes, or
      savings/performance claims.
- [ ] Secret scan re-run on the current artifact.
- [ ] Public-safe scan re-run (no internal strategy, tracking links, or
      private workflow references in public material).
- [ ] Read-only boundary confirmed.
- [ ] Wording is careful and non-absolute (no proof of security, market
      validation, production readiness, customer validation, or savings).
```
