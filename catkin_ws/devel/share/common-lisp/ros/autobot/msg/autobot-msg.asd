
(cl:in-package :asdf)

(defsystem "autobot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Unicycle" :depends-on ("_package_Unicycle"))
    (:file "_package_Unicycle" :depends-on ("_package"))
  ))