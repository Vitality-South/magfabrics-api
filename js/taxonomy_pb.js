// source: taxonomy.proto
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

goog.exportSymbol('proto.magnoliafabrics.Taxonomy', null, global);
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
proto.magnoliafabrics.Taxonomy = function(opt_data) {
  jspb.Message.initialize(this, opt_data, 0, -1, proto.magnoliafabrics.Taxonomy.repeatedFields_, null);
};
goog.inherits(proto.magnoliafabrics.Taxonomy, jspb.Message);
if (goog.DEBUG && !COMPILED) {
  /**
   * @public
   * @override
   */
  proto.magnoliafabrics.Taxonomy.displayName = 'proto.magnoliafabrics.Taxonomy';
}

/**
 * List of repeated fields within this message type.
 * @private {!Array<number>}
 * @const
 */
proto.magnoliafabrics.Taxonomy.repeatedFields_ = [1,2,3,4,5];



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
proto.magnoliafabrics.Taxonomy.prototype.toObject = function(opt_includeInstance) {
  return proto.magnoliafabrics.Taxonomy.toObject(opt_includeInstance, this);
};


/**
 * Static version of the {@see toObject} method.
 * @param {boolean|undefined} includeInstance Deprecated. Whether to include
 *     the JSPB instance for transitional soy proto support:
 *     http://goto/soy-param-migration
 * @param {!proto.magnoliafabrics.Taxonomy} msg The msg instance to transform.
 * @return {!Object}
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.magnoliafabrics.Taxonomy.toObject = function(includeInstance, msg) {
  var f, obj = {
    brandsList: (f = jspb.Message.getRepeatedField(msg, 1)) == null ? undefined : f,
    usesList: (f = jspb.Message.getRepeatedField(msg, 2)) == null ? undefined : f,
    colorsList: (f = jspb.Message.getRepeatedField(msg, 3)) == null ? undefined : f,
    designsList: (f = jspb.Message.getRepeatedField(msg, 4)) == null ? undefined : f,
    categoriesList: (f = jspb.Message.getRepeatedField(msg, 5)) == null ? undefined : f
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
 * @return {!proto.magnoliafabrics.Taxonomy}
 */
proto.magnoliafabrics.Taxonomy.deserializeBinary = function(bytes) {
  var reader = new jspb.BinaryReader(bytes);
  var msg = new proto.magnoliafabrics.Taxonomy;
  return proto.magnoliafabrics.Taxonomy.deserializeBinaryFromReader(msg, reader);
};


/**
 * Deserializes binary data (in protobuf wire format) from the
 * given reader into the given message object.
 * @param {!proto.magnoliafabrics.Taxonomy} msg The message object to deserialize into.
 * @param {!jspb.BinaryReader} reader The BinaryReader to use.
 * @return {!proto.magnoliafabrics.Taxonomy}
 */
proto.magnoliafabrics.Taxonomy.deserializeBinaryFromReader = function(msg, reader) {
  while (reader.nextField()) {
    if (reader.isEndGroup()) {
      break;
    }
    var field = reader.getFieldNumber();
    switch (field) {
    case 1:
      var value = /** @type {string} */ (reader.readString());
      msg.addBrands(value);
      break;
    case 2:
      var value = /** @type {string} */ (reader.readString());
      msg.addUses(value);
      break;
    case 3:
      var value = /** @type {string} */ (reader.readString());
      msg.addColors(value);
      break;
    case 4:
      var value = /** @type {string} */ (reader.readString());
      msg.addDesigns(value);
      break;
    case 5:
      var value = /** @type {string} */ (reader.readString());
      msg.addCategories(value);
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
proto.magnoliafabrics.Taxonomy.prototype.serializeBinary = function() {
  var writer = new jspb.BinaryWriter();
  proto.magnoliafabrics.Taxonomy.serializeBinaryToWriter(this, writer);
  return writer.getResultBuffer();
};


/**
 * Serializes the given message to binary data (in protobuf wire
 * format), writing to the given BinaryWriter.
 * @param {!proto.magnoliafabrics.Taxonomy} message
 * @param {!jspb.BinaryWriter} writer
 * @suppress {unusedLocalVariables} f is only used for nested messages
 */
proto.magnoliafabrics.Taxonomy.serializeBinaryToWriter = function(message, writer) {
  var f = undefined;
  f = message.getBrandsList();
  if (f.length > 0) {
    writer.writeRepeatedString(
      1,
      f
    );
  }
  f = message.getUsesList();
  if (f.length > 0) {
    writer.writeRepeatedString(
      2,
      f
    );
  }
  f = message.getColorsList();
  if (f.length > 0) {
    writer.writeRepeatedString(
      3,
      f
    );
  }
  f = message.getDesignsList();
  if (f.length > 0) {
    writer.writeRepeatedString(
      4,
      f
    );
  }
  f = message.getCategoriesList();
  if (f.length > 0) {
    writer.writeRepeatedString(
      5,
      f
    );
  }
};


/**
 * repeated string Brands = 1;
 * @return {!Array<string>}
 */
proto.magnoliafabrics.Taxonomy.prototype.getBrandsList = function() {
  return /** @type {!Array<string>} */ (jspb.Message.getRepeatedField(this, 1));
};


/**
 * @param {!Array<string>} value
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.setBrandsList = function(value) {
  return jspb.Message.setField(this, 1, value || []);
};


/**
 * @param {string} value
 * @param {number=} opt_index
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.addBrands = function(value, opt_index) {
  return jspb.Message.addToRepeatedField(this, 1, value, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.clearBrandsList = function() {
  return this.setBrandsList([]);
};


/**
 * repeated string Uses = 2;
 * @return {!Array<string>}
 */
proto.magnoliafabrics.Taxonomy.prototype.getUsesList = function() {
  return /** @type {!Array<string>} */ (jspb.Message.getRepeatedField(this, 2));
};


/**
 * @param {!Array<string>} value
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.setUsesList = function(value) {
  return jspb.Message.setField(this, 2, value || []);
};


/**
 * @param {string} value
 * @param {number=} opt_index
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.addUses = function(value, opt_index) {
  return jspb.Message.addToRepeatedField(this, 2, value, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.clearUsesList = function() {
  return this.setUsesList([]);
};


/**
 * repeated string Colors = 3;
 * @return {!Array<string>}
 */
proto.magnoliafabrics.Taxonomy.prototype.getColorsList = function() {
  return /** @type {!Array<string>} */ (jspb.Message.getRepeatedField(this, 3));
};


/**
 * @param {!Array<string>} value
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.setColorsList = function(value) {
  return jspb.Message.setField(this, 3, value || []);
};


/**
 * @param {string} value
 * @param {number=} opt_index
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.addColors = function(value, opt_index) {
  return jspb.Message.addToRepeatedField(this, 3, value, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.clearColorsList = function() {
  return this.setColorsList([]);
};


/**
 * repeated string Designs = 4;
 * @return {!Array<string>}
 */
proto.magnoliafabrics.Taxonomy.prototype.getDesignsList = function() {
  return /** @type {!Array<string>} */ (jspb.Message.getRepeatedField(this, 4));
};


/**
 * @param {!Array<string>} value
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.setDesignsList = function(value) {
  return jspb.Message.setField(this, 4, value || []);
};


/**
 * @param {string} value
 * @param {number=} opt_index
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.addDesigns = function(value, opt_index) {
  return jspb.Message.addToRepeatedField(this, 4, value, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.clearDesignsList = function() {
  return this.setDesignsList([]);
};


/**
 * repeated string Categories = 5;
 * @return {!Array<string>}
 */
proto.magnoliafabrics.Taxonomy.prototype.getCategoriesList = function() {
  return /** @type {!Array<string>} */ (jspb.Message.getRepeatedField(this, 5));
};


/**
 * @param {!Array<string>} value
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.setCategoriesList = function(value) {
  return jspb.Message.setField(this, 5, value || []);
};


/**
 * @param {string} value
 * @param {number=} opt_index
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.addCategories = function(value, opt_index) {
  return jspb.Message.addToRepeatedField(this, 5, value, opt_index);
};


/**
 * Clears the list making it empty but non-null.
 * @return {!proto.magnoliafabrics.Taxonomy} returns this
 */
proto.magnoliafabrics.Taxonomy.prototype.clearCategoriesList = function() {
  return this.setCategoriesList([]);
};


goog.object.extend(exports, proto.magnoliafabrics);
