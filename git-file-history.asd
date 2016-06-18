(defsystem git-file-history
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :maintainer "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :version "0.1"
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")
  :depends-on (:legit
               :uiop
               :cl-ppcre
               :local-time)
  :components ((:module "src"
                :serial t
                :components
                ((:file "git-file-history"))))
  :description "Retrieve a file&#39;s commit history in Git."
  :long-description
  #.(uiop:read-file-string
     (uiop:subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op git-file-history-test))))
