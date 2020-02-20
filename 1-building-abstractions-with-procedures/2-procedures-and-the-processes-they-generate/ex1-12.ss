
; 原始方法
(define (p n k)
    (iter n k))
(define (iter n k)
    (cond ((or (< n 0) (> k n)) 0)
          ((or (= k 0) (= k n)) 1)
          (else (+ (iter (- n 1) (- k 1))
                   (iter (- n 1) k)))
          ))


; 改良方法
(define (pascal n k)
    (/ (n! n) (* (n! k) (n! (- n k)))))

(define (n! n)
    (iter-n 1 1 n))

(define (iter-n product number count)
    (cond ((= count 0) product)
          (else (iter-n (* product number) (+ number 1) (- count 1)))))
