(define (if-program condition if-true if-false)
   `(if ,condition ,if-true ,if-false)
)

(define (pow-expr n p)
    (if (= p 1) 1
     `(* (pow-expr n (p-1)) n)
    )
)



(define (cddr s)
  (cdr (cdr s))
)

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cddr s))
)

(define (swap expr)
    (let ((op (car expr))
        (first (car (cdr expr)))
        (second (caddr expr))
        (rest (cdr (cddr expr))))
        (if (> (eval second) (eval first))(cons op(cons second(cons first rest)))
        expr)
    )
)

(define (make-or expr1 expr2)
`(let ((v1 ,expr1))
)
(if v1 v1 ,expr2))
)

(define (make-make-or)
  '(define (make-or expr1 expr2) `(let ((v1 ,expr1)) (if v1 v1 ,expr2)))
)
