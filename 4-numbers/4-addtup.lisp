(define addTup
	(lambda(tup)
		(cond
			((null? tup) 0)
			(else o+(car tup) addTup(cdr tup)))))

