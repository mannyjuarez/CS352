(defun checknumber (n)
	(cond ((= n 0) 0)
		   ((evenp n) 1)
			((oddp n) -1)))