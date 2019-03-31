;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::unicycle)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'unicycle (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::UNICYCLE")
  (make-package "BEGINNER_TUTORIALS::UNICYCLE"))

(in-package "ROS")
;;//! \htmlinclude unicycle.msg.html


(defclass beginner_tutorials::unicycle
  :super ros::object
  :slots (_velocity _w ))

(defmethod beginner_tutorials::unicycle
  (:init
   (&key
    ((:velocity __velocity) 0)
    ((:w __w) 0)
    )
   (send-super :init)
   (setq _velocity (round __velocity))
   (setq _w (round __w))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; uint16 _velocity
    2
    ;; uint16 _w
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _velocity
       (write-word _velocity s)
     ;; uint16 _w
       (write-word _w s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _velocity
     (setq _velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _w
     (setq _w (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get beginner_tutorials::unicycle :md5sum-) "96e5bb2153d645eed98ac4891e1f9e0e")
(setf (get beginner_tutorials::unicycle :datatype-) "beginner_tutorials/unicycle")
(setf (get beginner_tutorials::unicycle :definition-)
      "uint16 velocity
uint16 w

")



(provide :beginner_tutorials/unicycle "96e5bb2153d645eed98ac4891e1f9e0e")


