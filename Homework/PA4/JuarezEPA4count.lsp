(defun count# (x)
      (cond ((null x) 0)
                ((numberp x) 1)
                (t (+(count# (car x))(count# (rest x))))))

;;; (count# nil)
;;; 0
;;; (count# 3)
;;; 1
;;; (count# 'a)
;;; *** - CAR: A is not a list
;;; (count# '(5 1 a 4))
;;; *** - CAR: A is not a list
;;; (count# '((1 1 (a)) 7 (b (3))))
;;; *** - CAR: A is not a list
;;; only works if list is all numbers, not sure why
;;; example: (count# '((1 1 (5)) 7 (10 (3))))
;;; 6