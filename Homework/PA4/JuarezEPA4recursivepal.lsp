(defun rev (l)
(cond 
    ((null (cdr l)) l)
    (t (append (rev (cdr l)) (list(car l) ) ))))

(defun palindrome (l)
(cond   ((null l) t)
    ((equal (car l) (car (last l)))(palindrome (cdr (rev (cdr l)))))))

;;; [3]> (palindrome 'nil)
;;; T
;;; [4]> (palindrome 'a)
;;; *** - CAR: A is not a list
;;; [5]> (palindrome '(a))
;;; T
;;; [6]> (palindrome '(a b c b a))
;;; T
;;; [7]> (palindrome '(a b c c b a))
;;; T
;;; [8]> (palindrome '(a b c a))
;;; NIL
;;; [9]> (palindrome '(a b d e f f c b d a))
;;; NIL
;;; [10]> (palindrome ' ((a b) (b a)))
;;; NIL