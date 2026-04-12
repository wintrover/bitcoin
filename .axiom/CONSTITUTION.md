# CONSTITUTION

## 1. Verification Scope
This repository (`bitcoin`) is the target repository for the `Axiom_Enterprise` integrity verification engine and is handled solely for analysis and proof purposes. Direct modifications to Bitcoin Core source code (.cpp, .h, etc.) are strictly prohibited. All verification results and derived hints are managed only through `.axiom` and `ax.toml`.

## 2. MCP-First Policy
All reasoning, analysis, and verification work for this repository is conducted exclusively through Axiom MCP tools (`axiom.verify`, `axiom.inspectTrace`, `axiom_validate_integrity`, etc.). Subjective reasoning without physical SMT Solver logs and Reasoning Trace evidence is excluded.

## 3. LFS-based Professional Verification System
- **Intent (Constitution)**: This document (`.axiom/CONSTITUTION.md`)
- **Evidence**: SMT result summary and investigation records (`.axiom/evidence/bitcoin_integrity_analysis.md`)
- **Specification**: Business logic perspective verification specification (`.axiom/features/verification.spec`)
- **Mechanical Logs (Artifacts)**: `.smt2` and other machine-generated data are isolated in the `.axiom/artifacts/` path for purity preservation of the main history and permanently preserved with Git LFS.