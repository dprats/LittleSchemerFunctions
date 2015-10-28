; insert NEW to the left of OLD

(define insertL
	(lambda (new old lat)
		(cond
			((null? lat)  (quote ()))
			(else
				(cond
					((eq? old (car lat)) (cons new lat))
					(else  cons (car lat) (insertL(new old (cdr lat)))))))))