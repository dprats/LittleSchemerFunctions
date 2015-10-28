; substitute old with new within l (list of s-expressions)
(define subst*
	(lambda (new old l)
		((null? l) (quote ()))
		; if the car of l is an atom
		((atom? (car l)
			(cond
				; if the car of l == old
				((eq? (car l) old) 
					(cons new (subst* new old (cdr l))))
				; if the car of l != old
				(else (cons (car l) (subst* new old (cdr l)))))
		; if the car of l is a list
		(else
			(cons 	(subst* new old (car lat))
					(subst* new old (cdr lat))))))))