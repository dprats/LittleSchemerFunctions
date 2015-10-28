; return strue if two lists are identical
(define eqlist?
	(lambda l1 l2
		(cond
			; if both lists are null, return true
			((and (null? l1) (null? l2)) #t)

			; if l1 is null and car l2 is an atom, return false
			((and (null? l1) (atom?  (car l2))) #f)

			; if l1 is null and car l2 is a list, return
			((null? l1) #f)

			; if l2 is null and car l1 is an atom, return false
			((and (atom? (car l1)) (null? l2)) #f)

			; if car l1 and car l2 are both atoms...
			((and (atom? (car l1)) (atom? (car l2)))

					(and 	((eqan? (car l1) (car l2)) 
							(eqlist? (cdr l1) (cdr l2)))))

			; if car l1 is an atom and car l2 is a list, return false
			((atom? (car l1)) #f)

			; if car l1 is NOT null but l2 is null
			((null? l2) #f)

			; if car l1 is a list and car l2 is an atom, return false
			((atom? (car l2)) #f)

			; if car l1 and car l2 are both lists...
			(else (and 	(eqlist? (car l1) (car l2)) 
						(eqlist? (cdr l1) (dr l2)))))

; Rewrite eqlist? using or...



