; finds the leftmost atom in an s-expression l
; leftmost only works on lists which are non-empty

(define leftmost
	(lambda l
		((atom? (car l)) (car l))
		(else leftmost (car l))))
