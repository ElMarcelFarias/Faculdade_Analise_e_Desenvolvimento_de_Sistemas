var http = require('http');
var fs = require('fs');

http.createServer(function(request, response) {
    fs.readFile("index.html", function(error, content) {
        if(error) {
            console.log(error)
        } else {
            response.write(content);
        }
        response.end()
    })
}).listen(8081);

console.log("Servidor rodando em http://localhost:8081");