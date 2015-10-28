; subst replaces the first insance of old with new within lat

(define subst
	(lambda (new old lat)
		(cond
			((null? lat) (quote ()))
			(else
				(cond
					((eq? old (car lat)) 
						(cons new (cdr lat))
					(else (cons (car lat) 
							(subst new old (cdr lat))))))))))