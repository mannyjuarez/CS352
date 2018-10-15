
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