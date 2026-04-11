const { spawn } = require('child_process');

const p = spawn('D:\\Coding\\Archright\\Axiom_Enterprise\\ax.cmd', ['mcp'], {
    stdio: ['pipe', 'pipe', 'inherit'],
    shell: true
});

const reqs = [
    {"jsonrpc":"2.0","id":1,"method":"tools/list","params":{}}
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
