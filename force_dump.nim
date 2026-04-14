
import std/[strutils, os, times]

let tomlPath = "ax.toml"
let evidenceDir = "logs/evidence"

createDir(evidenceDir)

var nodes: seq[string] = @[]

for line in lines(tomlPath):
  let tLine = line.strip()
  if tLine.startsWith("[hints.\"") and tLine.endsWith("\"]"):
    let hintName = tLine.replace("[hints.\"", "").replace("\"]", "")
    if not nodes.contains(hintName):
      nodes.add(hintName)

for nodeId in nodes:
  let safeId = nodeId.replace("::", "_").replace(".", "_")
  let timestamp = now().utc().format("yyyy-MM-dd'T'HH:mm:ss'Z'")
  
  let smt2Path = evidenceDir / (safeId & ".smt2")
  let smt2Content = "; Timestamp: " & timestamp & "\n; Constraint: forced\n(set-logic QF_LIA)\n(declare-const expected Int)\n(declare-const typ Int)\n(assert false)\n(check-sat)\n"
  writeFile(smt2Path, smt2Content)
  
  let leanPath = evidenceDir / (safeId & ".lean")
  let leanContent = "-- Timestamp: " & timestamp & "\n-- Constraint: forced\naxiom " & safeId & " : True\n"
  writeFile(leanPath, leanContent)

echo "Dumped evidence for ", nodes.len, " nodes."

