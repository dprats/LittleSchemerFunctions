; this will return the first atom of every list inside l

(define firsts
	(lambda (l)
		(cond
			((null? l) (quote ())
			; cons the first element of the first list of l with the firsts(cdr l)
			(else (cons (car (car l)) 
				firsts (cdr l))))))