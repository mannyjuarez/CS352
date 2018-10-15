
(defun randlist ()
  (let ((lst ()))
    (dotimes (i 20)
       (setf lst (cons (random 101) lst)))
   lst))
   
(setf var1 (randlist))

(defun randlist ()
  (let ((lst ()))
    (dotimes (i 20)
       (setf lst (cons (+ 10.0 (random 71.0)) lst)))
   lst))

(setf var1 (randlist))

;;; (75 72 87 40 25 39 1 36 0 19 94 27 22 41 7 89 23 60 65 86)

;;; (45.67449 78.65647 38.59569 43.438145 11.475281 25.527868 23.470503 24.82378
;;; 40.992508 64.834564 74.42293 54.52149 58.700756 29.775448 44.234093 26.212866
;;; 23.329407 72.63156 14.407801 27.720041)