# Instructions

These files illustrate an issue with web sockets in Racket using `net/rfc6455`. The issue is only encountered when the _server_ is run from Windows. 

This repo was produced using Racket 8.10, but we also have reports of it happening on other 8.X versions.

## Steps to reproduce (bad behavior)

* Run `racket websocket-server.rkt` from `cmd` or PowerShell. 
* Run `racket websocket-client.rkt` from anywhere. 

The connection will be refused. After a few seconds, an error will print: 

```
$ racket websocket-client.rkt
tcp-connect: connection failed
  hostname: localhost
  port number: 8081
  system error: No connection could be made because the target machine actively refused it.; win_err=10061
```

## Steps to reproduce (good behavior)

* Run `racket websocket-server.rkt` from `drracket`, `git bash`, or `wsl`. 
* Run `racket websocket-client.rkt` from anywhere. 

The connection will be accepted, and the client will print "Hello world!". The server will show an error since the client disconnected ungracefully.

