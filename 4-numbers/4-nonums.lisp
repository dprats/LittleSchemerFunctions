; returns a lat after removing all of the numbers.
; use the primitive function number?

(define no-nums
	(lambda (lat)
		(cond
			((null? lat) (qoute ()))
			(else
				(cond
					(number? (car lat)) no-nums (cdr lat))
					(else cons 	(car lat) 
								(no-nums (cdr lat)))))))

; extract a tup from a lat using all the numbers in the lat

(define all-nums
	(lambda (lat)
		(cond
			((null? lat) (quote()))
			(else 
				(cond
					((number? (car lat)) cons 	(car lat) 
												(all-nums(cdr lat)))
					(else all-nums( cdr lat)))))))



; eqan? is true if two arguments (a1 and a2) are the same atom. 
; a) use = for numbers
; b) use eq? for atoms

(define equan?
	(lambda(a1 a2)
		(cond
			((and (number? a1) (number? a2)) (= a1 a2))
			((or (number? a1) (number? a2)) #f)
			(else (eq? a1 a2)))))




