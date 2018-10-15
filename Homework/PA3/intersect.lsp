(defun intersect (A B)
	(if (eq A())
		A
		(if (member (car A) B)
			(cons (car A) (intersect (cdr A) B))
			(intersect (cdr A) B))))

(defun NONE (A)
	