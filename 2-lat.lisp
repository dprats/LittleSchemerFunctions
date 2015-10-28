(define lat?
	(lambda (l)
		(cond
			; is l the null list, return true
			((null? l) #t) 
			; is the first item of the list an atom? 
			; if so, run lat on the remainder of the list
			((atom? (car l))(lat? (cdr l)))
			; if the first item is not an atom, then return false
			(else #f))))