; insert element NEW to the right of every element OLD in LAT

(define insertR*
	(lambda new old lat
		(cond
			; if lat is null
			((null? lat) (quote ()))
			
			(cond
				; if the car of the lat passed is an atom
				((atom? (car lat)) 
					(cond 
						; if the car lat is old...
						((eq? (car lat) old) 
							; return a list with new to the right of old
							(cons old (cons new (insertR* new old (cdr lat))))
						; if the car lat is NOT old...
						(else 
							(cons (car lat) (insertR* new old (cdr lat))))))
				; if the car of the lat passed is a list
				(else cons (insertR* new old (car lat)) (insertR* new old (cdr lat)))

			