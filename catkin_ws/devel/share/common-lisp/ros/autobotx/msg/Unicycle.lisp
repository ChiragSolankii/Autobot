; Auto-generated. Do not edit!


(cl:in-package autobotx-msg)


;//! \htmlinclude Unicycle.msg.html

(cl:defclass <Unicycle> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0))
)

(cl:defclass Unicycle (<Unicycle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Unicycle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Unicycle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autobotx-msg:<Unicycle> is deprecated: use autobotx-msg:Unicycle instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Unicycle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autobotx-msg:velocity-val is deprecated.  Use autobotx-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <Unicycle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autobotx-msg:w-val is deprecated.  Use autobotx-msg:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Unicycle>) ostream)
  "Serializes a message object of type '<Unicycle>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Unicycle>) istream)
  "Deserializes a message object of type '<Unicycle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Unicycle>)))
  "Returns string type for a message object of type '<Unicycle>"
  "autobotx/Unicycle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Unicycle)))
  "Returns string type for a message object of type 'Unicycle"
  "autobotx/Unicycle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Unicycle>)))
  "Returns md5sum for a message object of type '<Unicycle>"
  "5da81139520fcfcffde13463db80b125")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Unicycle)))
  "Returns md5sum for a message object of type 'Unicycle"
  "5da81139520fcfcffde13463db80b125")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Unicycle>)))
  "Returns full string definition for message of type '<Unicycle>"
  (cl:format cl:nil "float32 velocity~%float32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Unicycle)))
  "Returns full string definition for message of type 'Unicycle"
  (cl:format cl:nil "float32 velocity~%float32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Unicycle>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Unicycle>))
  "Converts a ROS message object to a list"
  (cl:list 'Unicycle
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':w (w msg))
))
