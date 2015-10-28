(define
	(lambda(a lat)
		(cond
			; if the list is empty, return false
			((null? l) #f)
			; this asks tqo questions:
			; is the first item of the list equal to a?
			(else (or 	(eq? (car lat) a)
			; does calling member? on the rest of the list return true?
						(member? a (cdr lat))))))) 