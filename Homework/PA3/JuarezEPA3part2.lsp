(defun term-m (term)
  (first term))

(defun term-e (term)
  (second term))

(defun simplify-polynomial (p)
  (remove-if #'zerop (sort p #'> :key #'term-e)
             :key #'term-m))

(defun write-term (m e start-p stream)
  ; sign or operator
  (cond ((and (minusp m) start-p)
         (princ "-" stream))
        ((not start-p)
         (princ (if (plusp m) " + " " - ") stream)))
  ; m
  (cond ((not (= (abs m) 1))
         (princ (abs m) stream)))
  (cond ((not (= (abs e) 0))
          (princ "x" stream)))

  ; e
  (cond ((and (not (= 1 e)) (not (= 0 e)))
         (princ "^" stream)
         (princ e stream))))

(defun write-poly (p &optional (stream *standard-output*))
  (loop for (m e) in (simplify-polynomial p)
        for start-p = t then nil
        do (write-term m e start-p stream)))

(write-poly '((2 1) (1 0)))
(write-poly '((3 2) (-1 0)))
(write-poly '((5 2) (-4 1) (1 0)))
(write-poly '((7 14) (11 13) (-3 2) (7 1) (-5 0)))
(write-poly '((1 0) (2 1) (-5 3) (-3 1) (7 0)))

;;; 2x
;;; 5x^2 - 4x + 
;;; 7x^14 + 11x^13 - 3x^2 + 7x - 5
;;;-5x^3 + 2x - 3x +  + 7