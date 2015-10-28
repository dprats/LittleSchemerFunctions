; return the intersect of two sets

(define intersect
	(lambda set1 set2
		(cond
			((null? set1) (quote ()))
			; if (car set1) is in set2
			((member? (car set1) set2) 
				(cons (car set1) (intersect (cdr set1) set2)))
			; if (car set1) is NOT in set2
			(else 
				(intersect (cdr set1) set2))))
