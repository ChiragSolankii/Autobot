// Auto-generated. Do not edit!

// (in-package autobotx.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Unicycle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
      this.w = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0;
      }
      if (initObj.hasOwnProperty('w')) {
        this.w = initObj.w
      }
      else {
        this.w = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Unicycle
    // Serialize message field [velocity]
    bufferOffset = _serializer.int16(obj.velocity, buffer, bufferOffset);
    // Serialize message field [w]
    bufferOffset = _serializer.int16(obj.w, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Unicycle
    let len;
    let data = new Unicycle(null);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [w]
    data.w = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autobotx/Unicycle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8c2016fd61b316daf4095d6aaecaac7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 velocity
    int16 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Unicycle(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0
    }

    if (msg.w !== undefined) {
      resolved.w = msg.w;
    }
    else {
      resolved.w = 0
    }

    return resolved;
    }
};

module.exports = Unicycle;
