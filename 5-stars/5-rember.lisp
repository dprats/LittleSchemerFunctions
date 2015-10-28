; remove member A from every l in LAT
(define rember*
	(lambda (a lat)
		(cond
			((null? lat) (quote ()))
			
			; if car lat is an atom
			((atom? car lat) 
				(cond
					; if car lat == a
					((eq? (car lat) a) (rember* ( a (cdr lat)))
					; if car lat != a
					(else (cons (car lat) rember* (a (cdr lat))))

			; if car lat is a list
			(else (cons rember*(a car lat) rember*(a cdr lat)))))))))