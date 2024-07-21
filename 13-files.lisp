(with-open-file (in "/tmp/foo-bar")
  (when in
    (loop for line = (read-line in nil)
          while line do (format t "~a~%" line))))


(defun write-to-file ()
  (with-open-file (out "/tmp/foo-bar" :direction :output :if-exists :append)
    (write-line "foo bar" out)))

(let ((p (pathname "/tmp/foo/bar")))
  (list
   :name (pathname-name p)
   :dir (pathname-directory p)
   :type (pathname-type p)))

(write-to-file)
