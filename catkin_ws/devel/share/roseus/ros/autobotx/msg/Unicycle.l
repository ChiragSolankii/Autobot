;; Auto-generated. Do not edit!


(when (boundp 'autobotx::Unicycle)
  (if (not (find-package "AUTOBOTX"))
    (make-package "AUTOBOTX"))
  (shadow 'Unicycle (find-package "AUTOBOTX")))
(unless (find-package "AUTOBOTX::UNICYCLE")
  (make-package "AUTOBOTX::UNICYCLE"))

(in-package "ROS")
;;//! \htmlinclude Unicycle.msg.html


(defclass autobotx::Unicycle
  :super ros::object
  :slots (_velocity _w ))

(defmethod autobotx::Unicycle
  (:init
   (&key
    ((:velocity __velocity) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _velocity (float __velocity))
   (setq _w (float __w))
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
    ;; float32 _velocity
    4
    ;; float32 _w
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autobotx::Unicycle :md5sum-) "5da81139520fcfcffde13463db80b125")
(setf (get autobotx::Unicycle :datatype-) "autobotx/Unicycle")
(setf (get autobotx::Unicycle :definition-)
      "float32 velocity
float32 w

")



(provide :autobotx/Unicycle "5da81139520fcfcffde13463db80b125")


