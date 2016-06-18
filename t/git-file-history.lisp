(in-package :cl-user)
(defpackage git-file-history-test
  (:use :cl :fiveam)
  (:export :run-tests))
(in-package :git-file-history-test)

(def-suite tests
  :description "git-file-history tests.")
(in-suite tests)

(test simple-test
  (is
   (equal 1 1))
  (is-true
   (and t t)))

(defun run-tests ()
  (run! 'tests))
