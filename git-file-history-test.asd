(defsystem git-file-history-test
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :depends-on (:git-file-history
               :fiveam)
  :components ((:module "t"
                :serial t
                :components
                ((:file "git-file-history")))))
