; A function that determines whether a representation of an arithmetic expression
; contains only numbers besides the +, x, and UP.

(numbered?
	(lambda (aexp)
		(cond
			((atom? aexp) (number? aexp))
			
			; if the second element is + sign...
			((eq? (car (cdr aexp)) (quote +)) 
				; check the first... 
				(and 	(numbered? (car aexp))
				; and third s-expressions are numbered
						(numbered? (car (cdr (cdr aexp))))))

			((eq? (car (cdr aexp)) (quote x))
				; check the first... 
				(and 	(numbered? (car aexp))
				; and third s-expressions are numbered
						(numbered? (car (cdr (cdr aexp))))))
			
			((eq? (car (cdr aexp)) (quote UP))
				; check the first... 
				(and 	(numbered? (car aexp))
				; and third s-expressions are numbered
						(numbered? (car (cdr (cdr aexp)))))))))

; Now assume aexp is an arithmetic expression
(define numbered?
	(lambda (aexp)
		(cond
			((atom? aexp) (number? aexp))
			(else
				(and (numbered? (car aexp)) (numbered? (car (cdr (cdr aexp)))))))))



