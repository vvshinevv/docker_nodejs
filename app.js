const http = require('http');
const server = http.createServer().listen(6000);

server.on('request', (req, res) => {
        console.log('request arrived.');
        res.write("HostName: " + process.env.HOSTNAME);
        res.end();
});

server.on('connection', (socker) => {
        console.log("Connected");
});
