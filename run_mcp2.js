const { spawn } = require('child_process');

const p = spawn('D:\\Coding\\Archright\\Axiom_Enterprise\\ax.cmd', ['mcp'], {
    stdio: ['pipe', 'pipe', 'inherit'],
    shell: true,
    env: { ...process.env, PATH: 'D:\\Coding\\Archright\\Axiom_Enterprise;D:\\Coding\\Archright\\Axiom_Enterprise\\src\\cli;' + process.env.PATH }
});

const reqs = [
    {"jsonrpc":"2.0","id":1,"method":"tools/call","params":{"name":"axiom_verify","arguments":{}}},
    {"jsonrpc":"2.0","id":2,"method":"tools/call","params":{"name":"axiom_validate_integrity","arguments":{}}}
];

let resStr = '';
p.stdout.on('data', (data) => {
    resStr += data.toString();
    const lines = resStr.split('\n');
    resStr = lines.pop();
    lines.forEach(line => {
        if (line.trim()) {
            console.log('RES:', line.trim());
        }
    });
});

p.on('close', () => {
    if (resStr.trim()) console.log('RES:', resStr.trim());
});

reqs.forEach(req => {
    p.stdin.write(JSON.stringify(req) + "\n");
});
p.stdin.end();
