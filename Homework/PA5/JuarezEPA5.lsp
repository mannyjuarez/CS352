(defun square(n) (* n n))

(defun double(n) (+ n n))

(defun isprime (n &optional (d (- n 1)))
  (cond ((<= n 1) nil)
        ((= d 1) t)
        ((= (mod n d) 0) nil)
        (t (isprime n (- d 1)))))

(defun OPSOME (test op L) 
	(cond ((null L) nil) 
		      (T (cond ((funcall test (car L)) 
                   (cons (funcall op (car L)) (opsome test op (cdr L))))
                  (T (cons (car L) (opsome test op (cdr L))))))))

(op-some #'isPrime #'double  '(2))
(op-some #'isPrime #'double  '(3))
(op-some #'isPrime #'double  '(3 6 4 5 2))

;;; couldn't get lisp to function properly