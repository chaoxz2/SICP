(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))


; 等价于
(define (a-plus-abs-b-equal a b)
    (cond ((> b 0) (+ a b))
          (else (- a b))))