import json
import sys
import subprocess

reqs = [
    {"jsonrpc":"2.0","id":1,"method":"tools/call","params":{"name":"axiom.inspectTrace","arguments":{"nodeId":"indirectmap.h::find"}}},
    {"jsonrpc":"2.0","id":2,"method":"tools/call","params":{"name":"axiom.inspectTrace","arguments":{"nodeId":"bitdeque.h::emplace"}}},
    {"jsonrpc":"2.0","id":3,"method":"tools/call","params":{"name":"axiom.inspectTrace","arguments":{"nodeId":"field_impl.h::secp256k1_fe_mul"}}},
    {"jsonrpc":"2.0","id":4,"method":"tools/call","params":{"name":"axiom.inspectTrace","arguments":{"nodeId":"spend_tests.cpp::Assert"}}}
]

p = subprocess.Popen([r"D:\Coding\Archright\Axiom_Enterprise\ax.cmd", "mcp"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, encoding='utf-8')

for req in reqs:
    msg = json.dumps(req) + "\n"
    p.stdin.write(msg)
    p.stdin.flush()
    line = p.stdout.readline()
    print("RES:", line.strip())

p.stdin.close()
p.wait()
