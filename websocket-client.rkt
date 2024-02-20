#lang racket

(require net/rfc6455)
(require net/url)

; Open a web-socket connection to port 8081.
(define c (ws-connect (string->url "ws://localhost:8081/")))
(define msg (ws-recv c))
(printf "~a~n" msg) ; Expect: "Hello world!"
; Don't try to close, just stop.