; return true if A is within L (list of S-expressions)
(define member*
	(lambda a l
		((null? l) #f)
		; if the first element is an atom
		((atom? (car l))
			(or
				; if the car l == a
				(eq? (car l) a)
				; if car l != a
				(else member* a (cdr l))))
		; if the first element is a list
		(else (or 	(member* a (car l))
					(member* a (cdr l))))))