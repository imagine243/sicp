; scip question 2.7
(define (make-interval a b) (cons a b))

(define (upper-bound x) (car x))
(define (lower-bound x) (cdr x))

(display (upper-bound (make-interval 1 2)))

