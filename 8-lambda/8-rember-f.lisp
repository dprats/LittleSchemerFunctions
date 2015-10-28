; removes a member based on A and  a TEST? applied recursively to L
; this function should return a list
; assue that ONLY ONE instance of A is present

(define rember-f
	(lambda test? a l
		(cond
			((null? l) (quote ()))
			((test? a (car l)) (cdr l))
			(else (rember-f test? a (cdr l))))))

; returns a function with a test built in: currying
(define rember-f
	(lambda test?
		(lambda a l)
			(cond
				((null? l) (quote ()))
				((test? a (car l)) (cdr l))
				(else (cons (car l) ( (rember-f test?) a (cdr l)))))))

