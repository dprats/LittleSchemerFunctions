; replaces either the the first occurrence of o1 or o2 with new

(define subst2
	(lambda (new o1 o2 lat)
		(cond
			( (null? lat) (quote ()))
			(else
				(cond
					((or (eq? (car lat) o1) (eq? (car lat) o2)) 
							(cons new (cdr lat)))
					(else cons (car lat) 
							(subst new o1 o2 (cdr lat))))))))
