; creates sets out of lists

(define makeset
	(lambda (lat)
		(cond
			((null? lat) (quote ()))
			; if the (car lat) is the list, recurse without the (car lat)
			((member? (car lat) (cdr lat)) 
						(makeset (cdr lat)))
			(else 
				; if the (car lat) is the list, cons (car lat) to recursion
				(cons (car lat) (makeset (cdr lat))))))))


; write makeset using multirember (remove multiple copies of a member)

(define makeset
	(lambda (lat)
		((null? lat) (quote ()))
		(else (cons (car lat) (makeset (multirember (car lat) (cdr lat)))))))
