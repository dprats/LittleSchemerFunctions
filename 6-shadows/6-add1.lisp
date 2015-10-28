; function for add1
; assumptions: 
; - () is zero
; - (()) is 1
; - (() ()) is 2, etc...


(define edd1
	(lambda (n)
		(cons (quote ()) n)))