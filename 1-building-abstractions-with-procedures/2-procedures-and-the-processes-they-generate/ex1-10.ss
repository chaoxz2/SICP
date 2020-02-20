(define (A x y)
    (cond ((= y 0) 0)
          ((= x 0) (* 2 y))
          ((= y 1) 2)
          (else (A (- x 1)
                    (A x (- y 1))))))

; (A 1 10) ===> 1024
; (A 2 4) ===> 65536
; (A 3 3) ===> 65536

(define (f n)
    (A 0 n))

; n=0时，f(n) = 0,n≠0时，f(n) = 2n.则f(n)=2n.

(define (g n)
    (A 1 n))

; g(n) = 0(n=0),g(n)=2^n(n≠0)

(define (h n)
    (A 2 n))

(define (k n)
    (* 5 n n))

; k(n) = 5n^2