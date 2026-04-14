
import std/[strutils, os, times, json]
import ../Axiom_Enterprise/src/core/smart_search
import ../Axiom_Enterprise/src/core/the_judge
import ../Axiom_Enterprise/src/core/solver_bridge

let tomlPath = "ax.toml"
let evidenceDir = "logs/evidence"

createDir(evidenceDir)

var currentHint: SemanticHint
var currentId = ""

for line in lines(tomlPath):
  let tLine = line.strip()
  if tLine.startsWith("[hints.\"") and tLine.endsWith("\"]"):
    if currentId != "":
      let outPath = evidenceDir / (currentId.replace("::", "_").replace(".", "_"))
      let smt2 = buildSmt2Query(currentHint)
      let lean = buildLeanQuery(currentId, currentHint)
      dumpEvidence(currentId, smt2, lean, currentHint.smtConstraint, evidenceDir)
    currentId = tLine.replace("[hints.\"", "").replace("\"]", "")
    currentHint = SemanticHint(smtConstraint: "", leanProposition: "", sourceReference: "")
  elif tLine.startsWith("lean_proposition = \""):
    currentHint.leanProposition = tLine.replace("lean_proposition = \"", "")[0..^2]
  elif tLine.startsWith("smt_constraint = \""):
    currentHint.smtConstraint = tLine.replace("smt_constraint = \"", "")[0..^2]
  elif tLine.startsWith("source = \""):
    currentHint.sourceReference = tLine.replace("source = \"", "")[0..^2]

if currentId != "":
  let outPath = evidenceDir / (currentId.replace("::", "_").replace(".", "_"))
  let smt2 = buildSmt2Query(currentHint)
  let lean = buildLeanQuery(currentId, currentHint)
  dumpEvidence(currentId, smt2, lean, currentHint.smtConstraint, evidenceDir)

echo "Dumped evidence successfully."

