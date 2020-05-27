
(cl:in-package :asdf)

(defsystem "serial_cmd-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "serial" :depends-on ("_package_serial"))
    (:file "_package_serial" :depends-on ("_package"))
  ))