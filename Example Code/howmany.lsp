(defun HowMany(A L)
  (cond ((null L) 0)
        ((atom L)
           (cond ((eq A L) 1)  
                 (T 0)))  
        (T (+ (HowMany A (car L)) (HowMany A (cdr L)))) 
  )
)
