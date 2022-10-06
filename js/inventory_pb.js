// source: inventory.proto
/**
 * @fileoverview
 * @enhanceable
 * @suppress {missingRequire} reports error on implicit type usages.
 * @suppress {messageConventions} JS Compiler reports an error if a variable or
 *     field starts with 'MSG_' and isn't a translatable message.
 * @public
 */
// GENERATED CODE -- DO NOT EDIT!
/* eslint-disable */
// @ts-nocheck

var jspb = require('google-protobuf');
var goog = jspb;
var global =
    (typeof globalThis !== 'undefined' && globalThis) ||
    (typeof window !== 'undefined' && window) ||
    (typeof global !== 'undefined' && global) ||
    (typeof self !== 'undefined' && self) ||
    (function () { return this; }).call(null) ||
    Function('return this')();

goog.exportSymbol('proto.magnoliafabrics.Inventory', null, global);
goog.exportSymbol('proto.magnoliafabrics.Inventory.PO', null, global);
goog.exportSymbol('proto.magnoliafabrics.Inventory.Roll', null, global);
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.magnoliafabrics.Inventory = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.magnoliafabrics.Inventory.repeatedFields_, null);
};
goog.inherits(proto.magnoliafabrics.Inventory, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.magnoliafabrics.Inventory.displayName = 'proto.magnoliafabrics.Inventory';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.magnoliafabrics.Inventory.Roll = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.magnoliafabrics.Inventory.Roll, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.magnoliafabrics.Inventory.Roll.displayName = 'proto.magnoliafabrics.Inventory.Roll';
}
/**
 * Generated by JsPbCodeGenerator.
 * @param {Array=} opt_data Optional initial data array, typically from a
 * server response, or constructed directly in Javascript. The array is used
 * in place and becomes part of the constructed object. It is not cloned.
 * If no data is provided, the constructed object will be empty, but still
 * valid.
 * @extends {jspb.Message}
 * @constructor
 */
proto.magnoliafabrics.Inventory.PO = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, null, null);
};
goog.inherits(proto.magnoliafabrics.Inventory.PO, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.magnoliafabrics.Inventory.PO.displayName = 'proto.magnoliafabrics.Inventory.PO';
}

/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.magnoliafabrics.Inventory.repeatedFields_ = [2,4];



if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.magnoliafabrics.Inventory.prototype.toObject = function(opt_includeInstance) {
  return proto.magnoliafabrics.Inventory.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.magnoliafabrics.Inventory} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.magnoliafabrics.Inventory.toObject = function(includeInstance, msg) {
  var f, obj = {
    productcode: jspb.Message.getFieldWithDefault(msg, 1, ""),
    rollsList: jspb.Message.toObjectList(msg.getRollsList(),
    proto.magnoliafabrics.Inventory.Roll.toObject, includeInstance),
    total: jspb.Message.getFieldWithDefault(msg, 3, ""),
    purchaseordersList: jspb.Message.toObjectList(msg.getPurchaseordersList(),
    proto.magnoliafabrics.Inventory.PO.toObject, includeInstance),
    totalonpo: jspb.Message.getFieldWithDefault(msg, 5, ""),
    onbackorder: jspb.Message.getFieldWithDefault(msg, 6, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.magnoliafabrics.Inventory}
 */
proto.magnoliafabrics.Inventory.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.magnoliafabrics.Inventory;
  return proto.magnoliafabrics.Inventory.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.magnoliafabrics.Inventory} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.magnoliafabrics.Inventory}
 */
proto.magnoliafabrics.Inventory.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setProductcode(value);
      break;
    case 2:
      var value = new proto.magnoliafabrics.Inventory.Roll;
      reader.readMessage(value,proto.magnoliafabrics.Inventory.Roll.deserializeBinaryFromReader);
      msg.addRolls(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.setTotal(value);
      break;
    case 4:
      var value = new proto.magnoliafabrics.Inventory.PO;
      reader.readMessage(value,proto.magnoliafabrics.Inventory.PO.deserializeBinaryFromReader);
      msg.addPurchaseorders(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.setTotalonpo(value);
      break;
    case 6:
      var value = /** @type {string} */ (reader.readString());
      msg.setOnbackorder(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.magnoliafabrics.Inventory.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.magnoliafabrics.Inventory.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.magnoliafabrics.Inventory} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.magnoliafabrics.Inventory.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getProductcode();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getRollsList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      2,
      f,
      proto.magnoliafabrics.Inventory.Roll.serializeBinaryToWriter
    );
  }
  f = message.getTotal();
  if (f.length > 0) {
    writer.writeString(
      3,
      f
    );
  }
  f = message.getPurchaseordersList();
  if (f.length > 0) {
    writer.writeRepeatedMessage(
      4,
      f,
      proto.magnoliafabrics.Inventory.PO.serializeBinaryToWriter
    );
  }
  f = message.getTotalonpo();
  if (f.length > 0) {
    writer.writeString(
      5,
      f
    );
  }
  f = message.getOnbackorder();
  if (f.length > 0) {
    writer.writeString(
      6,
      f
    );
  }
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.magnoliafabrics.Inventory.Roll.prototype.toObject = function(opt_includeInstance) {
  return proto.magnoliafabrics.Inventory.Roll.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.magnoliafabrics.Inventory.Roll} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.magnoliafabrics.Inventory.Roll.toObject = function(includeInstance, msg) {
  var f, obj = {
    id: jspb.Message.getFieldWithDefault(msg, 1, ""),
    quantity: jspb.Message.getFieldWithDefault(msg, 2, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.magnoliafabrics.Inventory.Roll}
 */
proto.magnoliafabrics.Inventory.Roll.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.magnoliafabrics.Inventory.Roll;
  return proto.magnoliafabrics.Inventory.Roll.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.magnoliafabrics.Inventory.Roll} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.magnoliafabrics.Inventory.Roll}
 */
proto.magnoliafabrics.Inventory.Roll.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setId(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setQuantity(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.magnoliafabrics.Inventory.Roll.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.magnoliafabrics.Inventory.Roll.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.magnoliafabrics.Inventory.Roll} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.magnoliafabrics.Inventory.Roll.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getId();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getQuantity();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
};


/**
 * optional string ID = 1;
 * @return {string}
 */
proto.magnoliafabrics.Inventory.Roll.prototype.getId = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.magnoliafabrics.Inventory.Roll} returns this
 */
proto.magnoliafabrics.Inventory.Roll.prototype.setId = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string Quantity = 2;
 * @return {string}
 */
proto.magnoliafabrics.Inventory.Roll.prototype.getQuantity = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.magnoliafabrics.Inventory.Roll} returns this
 */
proto.magnoliafabrics.Inventory.Roll.prototype.setQuantity = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};





if (jspb.Message.GENERATE_TO_OBJECT) {
/**
 * Creates an object representation of this proto.
 * Field names that are reserved in JavaScript and will be renamed to pb_name.
 * Optional fields that are not set will be set to undefined.
 * To access a reserved field use, foo.pb_<name>, eg, foo.pb_default.
 * For the list of reserved names please see:
 *     net/proto2/compiler/js/internal/generator.cc#kKeyword.
 * @param {boolean=} opt_includeInstance Deprecated. whether to include the
 *     JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @return {!Object}
 */
proto.magnoliafabrics.Inventory.PO.prototype.toObject = function(opt_includeInstance) {
  return proto.magnoliafabrics.Inventory.PO.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.magnoliafabrics.Inventory.PO} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.magnoliafabrics.Inventory.PO.toObject = function(includeInstance, msg) {
  var f, obj = {
    eta: jspb.Message.getFieldWithDefault(msg, 1, ""),
    amount: jspb.Message.getFieldWithDefault(msg, 2, "")
  };

  if (includeInstance) {
    obj.$jspbMessageInstance = msg;
  }
  return obj;
};
}


/**
 * Deserializes binary data (in protobuf wire format).
 * @param {jspb.ByteSource} bytes The bytes to deserialize.
 * @return {!proto.magnoliafabrics.Inventory.PO}
 */
proto.magnoliafabrics.Inventory.PO.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.magnoliafabrics.Inventory.PO;
  return proto.magnoliafabrics.Inventory.PO.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.magnoliafabrics.Inventory.PO} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.magnoliafabrics.Inventory.PO}
 */
proto.magnoliafabrics.Inventory.PO.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.setEta(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.setAmount(value);
      break;
    default:
      reader.skipField();
      break;
    }
  }
  return msg;
};


/**
 * Serializes the message to binary data (in protobuf wire format).
 * @return {!Uint8Array}
 */
proto.magnoliafabrics.Inventory.PO.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.magnoliafabrics.Inventory.PO.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.magnoliafabrics.Inventory.PO} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.magnoliafabrics.Inventory.PO.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getEta();
  if (f.length > 0) {
    writer.writeString(
      1,
      f
    );
  }
  f = message.getAmount();
  if (f.length > 0) {
    writer.writeString(
      2,
      f
    );
  }
};


/**
 * optional string ETA = 1;
 * @return {string}
 */
proto.magnoliafabrics.Inventory.PO.prototype.getEta = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.magnoliafabrics.Inventory.PO} returns this
 */
proto.magnoliafabrics.Inventory.PO.prototype.setEta = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * optional string Amount = 2;
 * @return {string}
 */
proto.magnoliafabrics.Inventory.PO.prototype.getAmount = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 2, ""));
};


/**
 * @param {string} value
 * @return {!proto.magnoliafabrics.Inventory.PO} returns this
 */
proto.magnoliafabrics.Inventory.PO.prototype.setAmount = function(value) {
  return jspb.Message.setProto3StringField(this, 2, value);
};


/**
 * optional string ProductCode = 1;
 * @return {string}
 */
proto.magnoliafabrics.Inventory.prototype.getProductcode = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 1, ""));
};


/**
 * @param {string} value
 * @return {!proto.magnoliafabrics.Inventory} returns this
 */
proto.magnoliafabrics.Inventory.prototype.setProductcode = function(value) {
  return jspb.Message.setProto3StringField(this, 1, value);
};


/**
 * repeated Roll Rolls = 2;
 * @return {!Array<!proto.magnoliafabrics.Inventory.Roll>}
 */
proto.magnoliafabrics.Inventory.prototype.getRollsList = function() {
  return /** @type{!Array<!proto.magnoliafabrics.Inventory.Roll>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.magnoliafabrics.Inventory.Roll, 2));
};


/**
 * @param {!Array<!proto.magnoliafabrics.Inventory.Roll>} value
 * @return {!proto.magnoliafabrics.Inventory} returns this
*/
proto.magnoliafabrics.Inventory.prototype.setRollsList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 2, value);
};


/**
 * @param {!proto.magnoliafabrics.Inventory.Roll=} opt_value
 * @param {number=} opt_index
 * @return {!proto.magnoliafabrics.Inventory.Roll}
 */
proto.magnoliafabrics.Inventory.prototype.addRolls = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 2, opt_value, proto.magnoliafabrics.Inventory.Roll, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.magnoliafabrics.Inventory} returns this
 */
proto.magnoliafabrics.Inventory.prototype.clearRollsList = function() {
  return this.setRollsList([]);
};


/**
 * optional string Total = 3;
 * @return {string}
 */
proto.magnoliafabrics.Inventory.prototype.getTotal = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 3, ""));
};


/**
 * @param {string} value
 * @return {!proto.magnoliafabrics.Inventory} returns this
 */
proto.magnoliafabrics.Inventory.prototype.setTotal = function(value) {
  return jspb.Message.setProto3StringField(this, 3, value);
};


/**
 * repeated PO PurchaseOrders = 4;
 * @return {!Array<!proto.magnoliafabrics.Inventory.PO>}
 */
proto.magnoliafabrics.Inventory.prototype.getPurchaseordersList = function() {
  return /** @type{!Array<!proto.magnoliafabrics.Inventory.PO>} */ (
    jspb.Message.getRepeatedWrapperField(this, proto.magnoliafabrics.Inventory.PO, 4));
};


/**
 * @param {!Array<!proto.magnoliafabrics.Inventory.PO>} value
 * @return {!proto.magnoliafabrics.Inventory} returns this
*/
proto.magnoliafabrics.Inventory.prototype.setPurchaseordersList = function(value) {
  return jspb.Message.setRepeatedWrapperField(this, 4, value);
};


/**
 * @param {!proto.magnoliafabrics.Inventory.PO=} opt_value
 * @param {number=} opt_index
 * @return {!proto.magnoliafabrics.Inventory.PO}
 */
proto.magnoliafabrics.Inventory.prototype.addPurchaseorders = function(opt_value, opt_index) {
  return jspb.Message.addToRepeatedWrapperField(this, 4, opt_value, proto.magnoliafabrics.Inventory.PO, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.magnoliafabrics.Inventory} returns this
 */
proto.magnoliafabrics.Inventory.prototype.clearPurchaseordersList = function() {
  return this.setPurchaseordersList([]);
};


/**
 * optional string TotalOnPO = 5;
 * @return {string}
 */
proto.magnoliafabrics.Inventory.prototype.getTotalonpo = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 5, ""));
};


/**
 * @param {string} value
 * @return {!proto.magnoliafabrics.Inventory} returns this
 */
proto.magnoliafabrics.Inventory.prototype.setTotalonpo = function(value) {
  return jspb.Message.setProto3StringField(this, 5, value);
};


/**
 * optional string OnBackorder = 6;
 * @return {string}
 */
proto.magnoliafabrics.Inventory.prototype.getOnbackorder = function() {
  return /** @type {string} */ (jspb.Message.getFieldWithDefault(this, 6, ""));
};


/**
 * @param {string} value
 * @return {!proto.magnoliafabrics.Inventory} returns this
 */
proto.magnoliafabrics.Inventory.prototype.setOnbackorder = function(value) {
  return jspb.Message.setProto3StringField(this, 6, value);
};


goog.object.extend(exports, proto.magnoliafabrics);
