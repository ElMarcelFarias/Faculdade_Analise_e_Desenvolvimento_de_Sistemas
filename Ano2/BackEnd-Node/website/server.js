const http = require('http');
const express = require('express');
const path = require('path');

const app = express();
app.use(express.json());
app.use(express.static('express'));

// URL PADRAO DO SITE

app.use('/', (req, res) => {
    res.sendFile(path.join(__dirname+'/node-example-website/express/index.html'));
});

const server = http.createServer(app);
const port = 3000;
server.listen(port);
console.debug('Server iniciado na porta '+ port);