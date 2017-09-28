;; c1.rkt
#!/usr/bin/racket
#lang racket

;; ;使用define 来命名 
;; (define pi 3.1415926)
;; ;define 还可以定义一个名字,引用复杂的计算结果,将复杂的程序简化.
;; (define radius 10)
;; (define circumference (* 2 pi radius))


;; ;定义过程 把复杂的过程定义成一个简单的函数 就是定义函数
(define (square x) (* x x))
;; (square 5)

;条件表达式 cond
(define (abs x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x))
            )
    )
;; (abs -5)


;; ;; ; 另外一个cond 版本 的abs
;; (define (abs x)
;;   (cond ((< x 0) (- x))
;;         (else x))
;;   )
;; (abs -10)


;; ;; ; other if version abs
;; (define (abs x)
;;   (if (< x 0)
;;       (- x)
;;       x
;;       )
;;   )
;; (abs -4)


;; ;average
(define (average x y) (/ (+ x y) 2.0))


;; ;过程内部定义过程, 这样我们只关注最主要的过程,辅助过程定义在过程内部隐藏起来
;; ;sqrt x 开平方
(define (sqrt x)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))
;; (sqrt 5.0)


;; ;1.3 抽象出的区间sum过程  只关注于sum求和
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next b)))
  )


;; ;; ;1-10 sum square
;; (define (inc n) (+ n 1))
;; (define (sum-square a b) (sum square a inc b))
;; (sum-square 1 5)

;; ;1-10 sum square with lambda
(define (sum-square a b)
  (sum (lambda (x) (* x x))
       a
       (lambda (x) (+ x 1))
       b))
(sum-square 1 10)

;; ;; ;lambda表达式的一般形式
;; (lambda (var1 var2 ......) (body))
;; ;; ;lambda 表达式的调用
;; ((lambda (var1 var2 ......) (body)) param1 param2)


;; ;; ;lambda 模拟局部变量  lambda函数后是实际的参数
;; (define (f x y) ((lambda (a b)
;;                    (+ (* x (square a))
;;                       (* y b)
;;                       (* a b)))
;;                  (+ 1 (* x y))
;;                  (- 1 y)))


;; ;; ;let 定义局部变量
;; (define (f x y)
;;   (let ((a (+ 1 (* x y)))
;;         (b (- 1 y)))
;;     (+ (* x (square a))
;;        (* y b)
;;        (* a b))))


;; ;; ;let 表达式的一般形式
;; (let ((var1 exp1)
;;       (var2 exp2)
;;       ......)
;;   body)
