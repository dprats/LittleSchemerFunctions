; insert NEW to the right of OLD

(define insertR
	(lambda new old lat)
		(cond
			(null? (quote ()))
			(else  
				(cond 
					((eq? old (car lat)) (cons old (cons new (cdr lat)))
					(else 
						(cons (car lat) 
							insertR(new old (cdr lat))))))))