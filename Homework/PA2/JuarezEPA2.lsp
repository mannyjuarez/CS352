(defun quad (A B C)
  (cond ((= A 0) (string "Not a quadratic equation."))
    (t
    (let ((D (- (* B B) (* 4 A C))))
      (cond ((= D 0) (concatenate 'string "x = " (write-to-string (/ (+ (- B) (sqrt D)) (* 2 A)))))
        (t
        (values (concatenate 'string "x1 = " (write-to-string (/ (+ (- B) (sqrt D)) (* 2 A))))
                (concatenate 'string "x2 = " (write-to-string (/ (- (- B) (sqrt D)) (* 2 A)))))))))))

(quad 2 -1 -1)
(quad 1 4 4)
(quad 3 11 0)
(quad 4 0 8)
(quad 0 4 4)

;;; "x1 = 1" ; "x2 = -1/2"
;;; "x = -2"
;;; "x1 = 0" ; "x2 = -11/3"
;;; "x1 = #C(0 1.4142135)" ; "x2 = #C(0 -1.4142135)"
;;; "Not a quadratic equation."