; returns a list with all members of a removed

(define multirember
	(lambda a lat)
	(cond
		((null? lat) (quote ()))
		(else 
			(cond
				((eq? (car lat) a) (multirember a (cdr lat)))
				(else 
					cons (car lat) (multirember (a (cdr lat))))))))

; example:

; a = cup
; lat = (cofee cup tea cup and hick cup)

