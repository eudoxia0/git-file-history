(in-package :cl-user)
(defpackage git-file-history
  (:use :cl)
  (:export :commits
   :view-commit)
  (:documentation "The main git-file-history package."))
(in-package :git-file-history)

(defun split (string)
  (uiop:split-string string :separator '(#\Newline #\Linefeed)))

(defun commits (repository pathname)
  "Given the absolute pathname to a repository, and the absolute pathname to a
file in that repository, return a list of commit hashes (strings)."
  (declare (type pathname repository pathname))
  (butlast (split (legit:with-chdir (repository)
                    (with-output-to-string (legit:*git-output*)
                      (legit:git-log :paths pathname :pretty "%H"))))))

(defparameter +format+ "format:%an%n%ae%n%cI%n%s%n%b")

(defun view-commit (repository hash)
  "Given the absolute pathname to a repository, and the hash of a commit, return
commit info."
  (let ((string (legit:with-chdir (repository)
                  (with-output-to-string (legit:*git-output*)
                    (legit:git-show hash
                                    :pretty +format+
                                    :patch nil)))))
    (unless (uiop:emptyp string)
      (destructuring-bind (name email timestring summary description &rest ignore)
          (split string)
        (declare (ignore ignore))
        (list :name name
              :email email
              :timestamp (local-time:parse-timestring timestring)
              :summary summary
              :description (if (uiop:emptyp description)
                               nil
                               description))))))
