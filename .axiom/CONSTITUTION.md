# CONSTITUTION

## 1. 검증 범위 (Verification Scope)
본 저장소(`bitcoin`)는 `Axiom_Enterprise` 무결성 검증 엔진의 타겟 저장소로서 오직 분석 및 증명 목적으로만 다뤄진다. 비트코인 코어 소스코드(.cpp, .h 등)에 대한 직접적인 수정은 엄격히 금지된다. 모든 검증 결과와 도출된 힌트는 `.axiom` 및 `ax.toml`을 통해서만 관리된다.

## 2. MCP-First Policy
본 저장소에 대한 모든 추론, 분석, 검증 작업은 오직 Axiom MCP 도구(`axiom.verify`, `axiom.inspectTrace`, `axiom_validate_integrity` 등)를 통해서만 진행된다. 물리적인 SMT Solver 로그와 Reasoning Trace 증거가 없는 주관적 추론은 배제된다.

## 3. LFS 기반 전문 검증 체계
- **의도 (Constitution)**: 본 문서(`.axiom/CONSTITUTION.md`)
- **근거 (Evidence)**: SMT 결과 요약 및 수사 기록(`.axiom/evidence/bitcoin_integrity_analysis.md`)
- **명세 (Specification)**: 비즈니스 로직 관점의 검증 명세(`.axiom/features/verification.spec`)
- **기계적 로그 (Artifacts)**: `.smt2` 및 기타 기계 생성 데이터는 메인 히스토리의 순수성 보존을 위해 `.axiom/artifacts/` 경로에 격리하고 Git LFS로 영구 보존한다.