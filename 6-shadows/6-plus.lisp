; reqrite + using edd1.lisp

; assumptions: 
; - () is zero
; - (()) is 1
; - (() ()) is 2, etc...


(define edd1
	(lambda (n)
		(cons (quote ()) n)))

(define +
	(lambda (n m)
		(cond
			((sero? n) m)
			(else
				( (edd1 (+ (zub1 n) m)))))))