; insert g returns a function that inserts either left or right


(define seqL
	(lambda (new old l)
		(cons new (cons old l))))

(define seqR
	(lambda (new old l)
		(cons old (cons new l))))

(define insert-g
	(lambda(seq)
		(lambda (new old l)
			(cond
				((null? l) (quote ()))
				((eq? (car l) old) ( seq new old (cdr l)))
				(else (cons 	(car l)
								( (insert-g seq) new old (cdr l))))))))