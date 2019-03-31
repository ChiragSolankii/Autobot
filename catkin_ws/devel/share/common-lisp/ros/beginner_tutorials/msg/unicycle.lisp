; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude unicycle.msg.html

(cl:defclass <unicycle> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type cl:fixnum
    :initform 0)
   (w
    :reader w
    :initarg :w
    :type cl:fixnum
    :initform 0))
)

(cl:defclass unicycle (<unicycle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <unicycle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'unicycle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<unicycle> is deprecated: use beginner_tutorials-msg:unicycle instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <unicycle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:velocity-val is deprecated.  Use beginner_tutorials-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <unicycle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:w-val is deprecated.  Use beginner_tutorials-msg:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <unicycle>) ostream)
  "Serializes a message object of type '<unicycle>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'velocity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'w)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'w)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <unicycle>) istream)
  "Deserializes a message object of type '<unicycle>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'velocity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'w)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'w)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<unicycle>)))
  "Returns string type for a message object of type '<unicycle>"
  "beginner_tutorials/unicycle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'unicycle)))
  "Returns string type for a message object of type 'unicycle"
  "beginner_tutorials/unicycle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<unicycle>)))
  "Returns md5sum for a message object of type '<unicycle>"
  "96e5bb2153d645eed98ac4891e1f9e0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'unicycle)))
  "Returns md5sum for a message object of type 'unicycle"
  "96e5bb2153d645eed98ac4891e1f9e0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<unicycle>)))
  "Returns full string definition for message of type '<unicycle>"
  (cl:format cl:nil "uint16 velocity~%uint16 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'unicycle)))
  "Returns full string definition for message of type 'unicycle"
  (cl:format cl:nil "uint16 velocity~%uint16 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <unicycle>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <unicycle>))
  "Converts a ROS message object to a list"
  (cl:list 'unicycle
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':w (w msg))
))
