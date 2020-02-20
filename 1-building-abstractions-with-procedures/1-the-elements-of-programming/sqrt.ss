(define (sqrt-iter guess x)
    (if(good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                    x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
    (sqrt-iter 1.0 x))


; 初步块结构：

(define (sqrt x)
    (define (sqrt-iter guess x)
        (if(good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
                        x)))
    (define (improve guess x)
        (average guess (/ x guess)))
    (define (average x y)
        (/ (+ x y) 2))
    (define (good-enough? guess x)
        (< (abs (- (square guess) x)) 0.001))
    (define (square x) (* x x))

    (sqrt-iter 1.0 x))

    ; 词法作用域(输入的参数x作为整个函数体的环境)

    (define (sqrt x)
    (define (sqrt-iter guess)
        (if(good-enough? guess)
            guess
            (sqrt-iter (improve guess))))
    (define (improve guess)
        (average guess (/ x guess)))
    (define (average x y)
        (/ (+ x y) 2))
    (define (good-enough? guess)
        (< (abs (- (square guess) x)) 0.001))
    (define (square x) (* x x))

    (sqrt-iter 1.0))