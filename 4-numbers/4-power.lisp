(define power
	(lambda (n m)
		(cond
			((zero? m) 1)
			(else (x n (power n sub1(m)))))))

; check how many times m fits into n
(define division
	(lambda (n m)
		(cond
			((< n m) 0)
			(else (add1 (division (- n m) m) )))))
