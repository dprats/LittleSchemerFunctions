; determines whether two S-expressions are equal
; S Expression = atom or list of S-expressions

; Four questions:
; a) if s1 && s2 == atom
; b) if s1 == atom, s2 == S-expressions
; c) if s1 == S-expression, s2 == atom
; d) if s1 == S-expression, s2 == S-expression


(define equal?
	(lambda s1 s2
		(cond
			((and (atom? s1) (atom? s2))
				(eqan s1 s2))
			((or (atom? s1) (atom? s2)) #f)
			(else (eqlist? s1 s2)))))

