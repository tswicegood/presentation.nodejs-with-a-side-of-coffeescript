!SLIDE 

# What is Node.js


!SLIDE

# Evented Web Server


!SLIDE code

    @@@javascript
    var http = require('http');
    http.createServer(function (req, res) {
      res.writeHead(200, {'Content-Type': 'text/plain'});
      res.end('Hello World\n');
    }).listen(8124, "127.0.0.1");
    console.log('Server running at http://127.0.0.1:8124/');


!SLIDE

# Evented <strike>Web Server</strike>


!SLIDE

# Evented Network<br/> Toolkit

!SLIDE

    @@@javascript
    var net = require('net');
    net.createServer(function (socket) {
        socket.setEncoding("utf8");
        socket.write("Echo server\r\n");
        socket.on("data", function (data) {
            socket.write("You said: " + data);
        });
        socket.on("end", function () {
            socket.end();
        });
    }).listen(8124, "127.0.0.1");
    console.log('Echo server running on tcp://127.0.0.1:8124');

!SLIDE

# And so much more…

