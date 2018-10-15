(apply 'max '())
(apply 'max '(3))
(apply 'max '(5 2 8))
(apply 'max '(2 4 8 1 6))
(cons 'a(cons 'b (cons 'c (cons 'd 'e))))
(list '(a 1) '(b 2) '(c 3


;;; *** - APPLY: too few arguments given to MAX
;;; The following restarts are available:
;;; ABORT          :R1      Abort main loop
;;; Break 1 [2]> abort
;;; 3
;;; 8
;;; 8
;;; (A B C D . E)
;;; ((A 1) (B 2) (C 3))