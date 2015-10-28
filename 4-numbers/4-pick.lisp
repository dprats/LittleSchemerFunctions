; return the nth number of a lat

(define pick
	(lambda (n lat)
		(cond
			((zero? sub1(n)) (car lat))
			(else (pick sub1(n) (cdr lat))))))

; remove the nth atom of a lat

(define rempick
	(lambda (n lat)
		(cond
			((zero? (sub1(n))) (cdr lat))
			(else cons 	(car lat) 
						(rempick (sub1 n) (cdr lat))))))