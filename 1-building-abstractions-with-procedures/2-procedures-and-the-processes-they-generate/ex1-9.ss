(define (inc x)
    (+ x 1))
(define (dec x)
    (- x 1))
(define (plus a b)
    (if (= a 0)
        b
        (inc (plus (dec a) b))))


; |(plus 7 8)
; | (plus 6 8)
; | |(plus 5 8)
; | | (plus 4 8)
; | | |(plus 3 8)
; | | | (plus 2 8)
; | | | |(plus 1 8)
; | | | | (plus 0 8)
; | | | | 8
; | | | |9
; | | | 10
; | | |11
; | | 12
; | |13
; | 14
; |15
; 15
; 线性递归过程
(define (plus a b)
    (if (= a 0)
        b
        (plus (dec a) (inc b))))

; |(plus 7 8)
; |(plus 6 9)
; |(plus 5 10)
; |(plus 4 11)
; |(plus 3 12)
; |(plus 2 13)
; |(plus 1 14)
; |(plus 0 15)
; |15
; 15
; 线性迭代过程