; using atomToFunction to write value with only two lines


(define atom-to-function
	(lambda (x)
		(cond
			((eq? x (quote +)) +function)
			((eq? x (quote x)) xfunction)
			(else UPfunction))))

(define value
	(lambda (nexp)
		(cond
			((atom? nexp) nexp)
			(else
				; get the operator
				((atom-to-function (operator nexp))
				; apply it to 1st and 2nd expressions recursively
				(value (1st-sub-exp nexp)) (value (2nd-sub-exp nexp)))))))