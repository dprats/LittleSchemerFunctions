; takes argument x and returns a function +, x, or UP depending on the operator

(define atom-to-function
	(lambda (x)
		(cond
			((eq? x (quote +)) +function)
			((eq? x (quote x)) xfunction)
			(else UPfunction))))