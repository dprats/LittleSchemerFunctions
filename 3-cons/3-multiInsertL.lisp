(define multiInsertL
	(lambda new old lat)
	(cond
		((null? lat) (quote ()))
		(else
			(cond
				((eq? (car lat) old) 
					(cons new 
						(cons old 
							multiInsertL new old 
								(cdr lat))))
				(else
					(cons (car lat) 
							multiInsertL new old (cdr lat)))))))