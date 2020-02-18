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
    (< (/ (abs (- guess (improve guess x))) guess) 0.001))

(define (square x) (* x x))

(define (sqrt x)
    (sqrt-iter 1.0 x))




; 两种方式的对比实际就是在guess和x相同的情况下，(abs (- (* guess guess) x)) (Ⅰ)和(/ (abs (- guess (/ (+ guess (/ x guess)) 2))) guess) (Ⅱ)哪一个更大，哪一个值更大，采用对应表达式的准确度就越高。
; x=4时(Ⅰ)表现更好，x=0.000009时(Ⅱ)表现更好，更详细的区域待论证
; 对很大的数(Ⅰ)为什么不能求出准确结果？
; 优化如下：
(define (good-enough? guess x)
    (if (< (/ (abs (- guess (improve guess x))) guess) (abs (- (* guess guess) x)))
        (< (abs (- (square guess) x)) 0.001)
        (< (/ (abs (- guess (improve guess x))) guess) 0.001)
    ))