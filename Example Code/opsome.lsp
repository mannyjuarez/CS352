(defun opsome (test op L)
   (cond ((null L) nil)
         ((atom L) 'error)         ;extra check, could skip
         ((listp (car L)) 'error)  ;extra check, could skip
         (T (cond ((funcall test (car L)) 
                   (cons (funcall op (car L)) (opsome test op (cdr L))))
                  (T (cons (car L) (opsome test op (cdr L)))))
         )
   )
)

(defun sq (x) (* x x))

(opsome #'oddp #'sq 'nil)
(opsome #'oddp #'sq '(2))
(opsome #'oddp #'sq '(3))
(opsome #'oddp #'sq '(3 6 4 5 2))

;Test if a number is prime or NOT.
;Adrian Statescu <mergesortv@gmail.com>
;License
;MIT
;Cheers!

(defun forall(L P)
   (if (null L) 
       T 
       (and (FUNCALL P (cAR L)) (forall (CDR L) P) )
   )
)
(defun nums(start stop)
       (setf L nil)
       (loop ( when(> start stop) (return (reverse L)) )
             (setf L (cons start L) )
             (incf start)
       ) 
)
(defun prime(N)
       (forall (nums 2 (floor (sqrt N)) )  
               #'(lambda (d) (not (= (MOD N d) 0)))
       )
)
;end of citation

(defun isPrime (n) 
  (prime n)
)

(defun double(x) (* 2 x))

(opsome #'isPrime #'double '(2))
(opsome #'isPrime #'double '(3))
(opsome #'isPrime #'double '(3 6 4 5 2))

