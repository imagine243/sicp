#! sicp question 1.11
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* (f (- n 2)) 2) (* (f (- n 3)) 3))
      )
  )

(define (f-iter n))