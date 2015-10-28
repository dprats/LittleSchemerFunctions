; remove s-expression S from list L 

(define rember
	(lambda s l
		(cond
			((null? l) (quote ()))
			((equal? s (car l)) (cdr l))
			(else cons 	(car l) 
						(rember s (cdr l))))))))