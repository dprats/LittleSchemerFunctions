(define multiInsertR
	(lambda new old lat)
	(cond
		((null? lat) (quote()))
		(else
			(cond
				( (eq? (car lat) old) 
					(cons old 
						(cons new (multiInsertR new old (cdr lat)))))
				( else 
					(cons (car lat)) 
						(multiInsertR new old (cdr lat)))))))

							