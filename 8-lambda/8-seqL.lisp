; Define function seqL

; a) takes 3 arguments
; b) conses the first arg onto result of consing second to third

(define seqL
	(lambda (new old l)
		(cons new (cons old l))))

(define seqR
	(lambda (new old l)
		(cons old (cons new l))))