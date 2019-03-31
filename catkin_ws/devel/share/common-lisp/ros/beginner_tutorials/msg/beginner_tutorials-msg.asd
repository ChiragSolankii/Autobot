
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Unicycle" :depends-on ("_package_Unicycle"))
    (:file "_package_Unicycle" :depends-on ("_package"))
  ))