; Auto-generated. Do not edit!


(cl:in-package autobotx-msg)


;//! \htmlinclude Unicycle.msg.html

(cl:defclass <Unicycle> (roslisp-msg-protocol:ros-message)
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
  (cl:let* ((signed (cl:slot-value msg 'velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'w)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Unicycle>) istream)
  "Deserializes a message object of type '<Unicycle>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'w) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
  "b8c2016fd61b316daf4095d6aaecaac7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Unicycle)))
  "Returns md5sum for a message object of type 'Unicycle"
  "b8c2016fd61b316daf4095d6aaecaac7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Unicycle>)))
  "Returns full string definition for message of type '<Unicycle>"
  (cl:format cl:nil "int16 velocity~%int16 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Unicycle)))
  "Returns full string definition for message of type 'Unicycle"
  (cl:format cl:nil "int16 velocity~%int16 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Unicycle>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Unicycle>))
  "Converts a ROS message object to a list"
  (cl:list 'Unicycle
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':w (w msg))
))
