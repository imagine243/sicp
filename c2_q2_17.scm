; sicp question 17

(define (last-pair lst)
  (define (last-pair-last lst1 last)
    (if (null? lst1)
        last
        (last-pair-last (cdr lst1) (car lst1))
     ))
  (last-pair-last lst 0)
  )

(last-pair (list 1 2 3 4 5))
