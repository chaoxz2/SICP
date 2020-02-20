(define (cube-root-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-root-iter (improve guess x)
                        x)))

(define (good-enough? guess x)
    (< (guess-error guess x) tolerance))

(define (guess-error guess x)
    (abs (- (* guess guess guess) x)))

(define (abs x)
    (if(< x 0)
        (- x)
        x))

(define tolerance 0.001)

(define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cube-root x)
    (cube-root-iter 1.0 x))