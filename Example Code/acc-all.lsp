(defun square(n) (* n n))

(defun double(n) (+ n n))

(defun isprime (n &optional (d (- n 1)))
  (cond ((<= n 1) nil)
        ((= d 1) t)
        ((= (mod n d) 0) nil)
        (t (isprime n (- d 1)))))

(defun OP-SOME (L) 
	(cond ((null L) nil) 
		((oddp (car L)) 
			(cons (square car L))(OP-SOME (cdr L)))) 
	(t (cons (car L) (OP-SOME (cdr L)))))

