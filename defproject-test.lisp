(defmacro defproject (name &body forms)
  `(list :name ,name :contents '(,@forms)))

(defproject "Coachning"
  (desc "Common Lisp provides built-in support for most of the data types typically found in modern languages: numbers (integer, floating point, and complex), characters, strings, arrays (including multidimensional arrays), lists, hash tables, input and output streams, and an abstraction for portably representing filenames. Functions are also a first-class data type in Lisp--they can be stored in variables, passed as arguments, returned as return values, and created at runtime.")
    
  (do "Lyssna pa alla poddar med Philip Diab"))

(defparameter *h* (make-hash-table))

(gethash 'foo *h*)

(setf (gethash 'foo *h*) 'quux)



