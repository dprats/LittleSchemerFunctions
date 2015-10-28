; insert NEW to the left of OLD in L (list of s-expressions)
(define insertL*
	(lambda new old l
		((null? l) (quote ()))
		((atom? (car l))
			(cond
				((eq? (car l) old) 
					(cons 	new 
							(cons old 
								(insertL* new old (cdr l)))))
				(else (cons (car l) (insertL* new old (cdr l)))))
		(else (cons 	(insertL* new old (car l))
						(insertL* new old (cdr l)))))))