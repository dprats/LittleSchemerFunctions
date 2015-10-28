(define eqset?
	(lambda set1 set2
		(cond
			( (subset? set1 set2) 
				(subset? set2 set1))
			(else #f))))

; rewriting with one COND line

(define eqset
	(lambd set1 set2
		(cond
			(else (and (subset? set1 set2) (subset set2 set1))))))