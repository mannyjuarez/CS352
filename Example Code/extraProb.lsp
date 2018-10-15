                                                                                                                    (defun AL1 (L1 L2)
  (cond ((and (null L1) (null L2)) nil)
        ((null L1) L2)
        ((null L2) L1)
        (T (cons (+ (car L1) (car L2)) (AL1 (cdr L1) (cdr L2))))))

(AL1 '(3 1 4) '(8 2 5))
(AL1 '(3 1 4) '(2 2))
(AL1 '(3 1 4) nil)

(defun INTERSECT (L1 L2)
  (cond ((null L1) nil)
        ((null L2) nil)
        (T (cond ((null (member (car L1) L2))
                  (INTERSECT (cdr L1) L2))
                 (T (cons (car L1) (INTERSECT (cdr L1) L2)))
           )
        )
  )
)

(INTERSECT '(4 1 2) '(2 5 3 1 7))
(INTERSECT '(4 1 2) nil)

(defun none (L) 
   (none-helper L '(0 0)))

(defun none-helper (L result)
   (cond ((null L) result)
         ((oddp (car L)) 
          (none-helper (cdr L) (cons (1+ (car result)) (cdr result))))
         (T (none-helper (cdr L) 
                         (list (car result) (1+ (nth 1 result)))))
   )
)

(none nil)
(none '(3))
(none '(2))
(none '(2 5 3 1 6 7 9 8))
