(defun palindrome (x) 
  (do ((x x (cdr x)) 
       (y x (cddr y)) 
       (z () (cons (car x) z)))
      ((null (cdr y)) 
       (equal z (if y (cdr x) x)))))

;;; [2]> (palindrome 'nil)
;;; T
;;; [3]> (palindrome 'a)
;;; *** - CDR: A is not a list
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
;;; [10]> (palindrome '((a b)(b a)))
;;; NIL
