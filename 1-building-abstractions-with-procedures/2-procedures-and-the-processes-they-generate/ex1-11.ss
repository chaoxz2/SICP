; 迭代过程
(define (g n)
    (cond ((< n 3) n)
            (else (iter 0 1 2 4 (- n 3)) )))
(define (iter 1st 2nd 3rd 4th count)
    (cond ((= count 0) 4th)
          (else (iter 2nd 3rd 4th (+ 4th (* 2 3rd) (* 3 2nd)) (- count 1)))))


; 递归过程
(define (f n)
    (cond ((< n 3) n)
          (else (+ (f (- n 1))
                   (* 2 (f (- n 2)))
                   (* 3 (f (- n 3)))))))