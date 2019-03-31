;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Unicycle)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Unicycle (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::UNICYCLE")
  (make-package "BEGINNER_TUTORIALS::UNICYCLE"))

(in-package "ROS")
;;//! \htmlinclude Unicycle.msg.html


(defclass beginner_tutorials::Unicycle
  :super ros::object
  :slots (_velocity _w ))

(defmethod beginner_tutorials::Unicycle
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
    ;; int16 _velocity
    2
    ;; int16 _w
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _velocity
       (write-word _velocity s)
     ;; int16 _w
       (write-word _w s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _velocity
     (setq _velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _w
     (setq _w (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get beginner_tutorials::Unicycle :md5sum-) "b8c2016fd61b316daf4095d6aaecaac7")
(setf (get beginner_tutorials::Unicycle :datatype-) "beginner_tutorials/Unicycle")
(setf (get beginner_tutorials::Unicycle :definition-)
      "int16 velocity
int16 w

")



(provide :beginner_tutorials/Unicycle "b8c2016fd61b316daf4095d6aaecaac7")


