(defmacro when-2 (condition &rest body)
  `(if ,condition (progn ,@body)))

(when-2 nil
        (format t "YES!"))

(when t
  (format t "YES!"))

(defun say ()
  (format t "word!")
  t)

(and nil (say) t)

(dolist (x '(1 2 3))
  (print x))

(dotimes (x 20)
  (dotimes (y 20)
    (format t "~3d " (* (1+ x) (1+ y))))
  (format t "~%"))

(do ((i 0 (1+ i))
     (j 3 (1- j)))
    ((>= i 4))
  (format t "~d ~d~%" i j))
