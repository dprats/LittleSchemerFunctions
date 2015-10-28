; returns true if set1 is a subset of set2

(define subset?
	(lambda set1 set2
		(cond
			((null? set1) #t)
			; if set1 has other atoms
			((member? (car set1) set2) 
				(subset? (cdr set1) set2))
			; if the first element of set1 is NOT in set2
			(else #f))))

; refactoring subset with "and"

(define subset?
	(lambda set1 set2
		(cond
			((null? set1) #t)
			(else
				(and (member? (car set1) set2) (subset? (cdr set1) set2)))))) 