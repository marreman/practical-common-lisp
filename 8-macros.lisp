(defun primep (number)
  (when (> number 1)
    (loop for fac from 2 to (isqrt number) never (zerop (mod number fac)))))

;; (dotimes (n 10)
;;   (format t "Is prime? ~d ~b~%" n (primep n)))

(defun next-prime (number)
  (loop for n from number when (primep n) return n))

;; (next-prime 100)


(do ((p (next-prime 0) (next-prime (1+ p))))
    ((> p 19))
  (format t "~d " p))

(defmacro with-gensyms ((&rest names) &body body)
  `(let ,(loop for n in names collect `(,n (gensym)))
     ,@body))

(with-gensyms (foo bar)
  (foo bar))

(defmacro do-primes ((var start end) &body body)
  (with-gensyms (ending-value-name)
    `(do ((,var (next-prime ,start) (next-prime (1+ ,var)))
          (,ending-value-name ,end))
         ((> ,var ,ending-value-name))
       ,@body)))

(do-primes (p 0 19)
  (format t "~d " p))

(do-primes (ending-value 0 19)
  (print ending-value))

(do-primes (p 0 (random 100))
  (format t "~d " p))
