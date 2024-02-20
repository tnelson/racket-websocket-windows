#lang racket
(require net/rfc6455)

; Start up a web-socket server on port 8081
(define close-server
  (ws-serve   
   #:port 8081            
            (lambda (c s)
              (printf "connected~n")
              (ws-send! c "Hello world!"))))

; Keep running until Ctrl-C 
(read-line)