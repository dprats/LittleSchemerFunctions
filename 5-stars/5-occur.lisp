; counts the number of atoms A in L (which is a list of S-expressions)
(define occur*
	(lambda a l
		((null? l) (0))
		((atom? (car l))
			(cond
				; if the car lat is A
				((eq? a (car l)) add1(occur* a (cdr l)))
				; if the car of lat is NOT A
				(else occur*(a (cdr l))))
		; if the car of l is a list
		(else +( occur* a (car lat) occur* a (cdr lat))))))