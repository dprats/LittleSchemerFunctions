; return the natural value of the numbered arithmetic expression
; we are assuming that we the input is a well cosntructed arithmetic expression

(define value
	(lambda nexp
		(cond
			((atom? nexp) nexp)
			; if the second element is PLUS...
			((eq? (car (cdr aexp)) (quote +)) 
				(+ (value (car nexp)) (value (car (cdr (cdr nexp))))))
			; if the second element is X
			((eq? (car (cdr aexp)) (quote x)) 
				(x (value (car nexp)) (value (car (cdr (cdr nexp))))))
			; if the second element is UP
			(else (UP (value (car nexp)) (value (car (cdr (cdr nexp)))))))))
		
rewrite value for a new kind of arithmetic expression that is either:

- a number
- list of the atom + followed by two arithmetic expressions
- list of the atom X followed by two arithmetic expressions
- list of the atom UP followed by two arithmetic expressions

(define value
	(lambda nexp
		(cond
			((atom? nexp) nexp)
			; if it is a list with the the first atom is +
			((eq? (car nexp) (quote +)) 
				; add the second AEXP and the third AEXP
				(+ (value (car (cdr nexp))) (value (car (cdr (cdr nexp))))))
			; if it is a list with the the first atom is x
			((eq? (car nexp) (quote x)) ..)
			; if it is a list with the the first atom is UP
			(else ..))))



; create helper functions to get the sub expressions
(define 1st-sub-exp
	(lambda aexp
		((car (cdr aexp)))))

(define 2nd-sub-exp
	(lambda nexp
		 (car (cdr (cdr aexp)))))

(define operator
	(lambda aexp
		(car aexp)))

; refactoring value
(define value
	(lambda nexp
		(cond
			((atom? nexp) nexp)
			((eq? (operator nexp) (quote +)) 
					(+ (value (1st-sub-exp nexp) (value (2nd-sub-exp nexp)))))
			((eq? (operator nexp) (quote x)) 
					(x (value (1st-sub-exp nexp) (value (2nd-sub-exp nexp)))))
			(else 
					(UP (value (1st-sub-exp nexp) (value (2nd-sub-exp nexp))))))))



