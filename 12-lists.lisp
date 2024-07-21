(let ((cell (cons 1 2)))
  (car cell)
  (cdr cell))


(defparameter *cons* (cons 1 2))

(setf (car *cons*) 10)

(setf (cdr *cons*) 20)

*cons*

(cdr (cons 1 (cons 2 (cons 3 nil))))

(list "foo" (list 1 2) 1)

(append (list 1 2) (list 3 4))

(setf a (list 1 2))
(setf b (list 3 4))
(setf c (append a b))

(setf (first a) "!")
(setf (cdr a) "&")
(setf (first b) "foo")

(defun test-substitute ()
 (let ((a (list 1 2 3 4)))
   (list
    :original a
    :substitute (substitute "foo" 1 a))))

(defun test-nsubstitute ()
 (let ((a (list 1 2 3 4)))
   (list
    :original a
    :nsubstitute (nsubstitute "foo" 1 a))))

(test-substitute)

(test-nsubstitute)

(third (list* 1 2 3))

(assoc "foo" (list (cons "foo" 2)) :test #'string=)

(acons "key" "value" '())

(defvar *plist* ())

(setf (getf *plist* :bogus) "foo")

*plist*
