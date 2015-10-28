
; this funcion does not work because it consumes the original list
(define rember
	(lambda (a lat)
		(cond
			((null? lat) (quote ()))
			(else 	(cond
						((eq? a (car lat)) (cdr lat))
						(else (rember a (cdr lat))))))))


; modified function
(define rember
	(lamda (a lat)
		(cond
			((null? lat) (quote ()))
			(else
				(cond 
					((eq? a (car lat)) (cdr lat))
					(else (cons (car lat)
						(rember a
							(cdr lat))))
					)))))

; a = "and"
; lat = "(bacon lettuce and tomato)"\

; First Iteration

; Cons "bacon" into (rember and (lettuce and tomato)  )
(cons (car lat)  (rember a (cdr lat))     )



