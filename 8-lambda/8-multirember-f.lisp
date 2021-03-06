; return a function to remove multiple members from lat based on a test?

(define multirember-f
	(lambda (test?)
		(lambda (a lat)
			(cond
				((null? lat) (quote ()))
				((test? a (car lat)) ((multirember-f test?) a (cdr lat)))
				(else (cons 	(car lat) 
								((multirember-f test?) a (cdr lat))))))))

