/**
 * @fileoverview gRPC-Web generated client stub for magnoliafabrics
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!


/* eslint-disable */
// @ts-nocheck



const grpc = {};
grpc.web = require('grpc-web');


var inventory_pb = require('./inventory_pb.js')

var fabric_pb = require('./fabric_pb.js')

var taxonomy_pb = require('./taxonomy_pb.js')

var cleaning_code_pb = require('./cleaning_code_pb.js')
const proto = {};
proto.magnoliafabrics = require('./magnolia_service_pb.js');

/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?grpc.web.ClientOptions} options
 * @constructor
 * @struct
 * @final
 */
proto.magnoliafabrics.MagnoliaFabricsServiceClient =
    function(hostname, credentials, options) {
  if (!options) options = {};
  options.format = 'text';

  /**
   * @private @const {!grpc.web.GrpcWebClientBase} The client
   */
  this.client_ = new grpc.web.GrpcWebClientBase(options);

  /**
   * @private @const {string} The hostname
   */
  this.hostname_ = hostname;

};


/**
 * @param {string} hostname
 * @param {?Object} credentials
 * @param {?grpc.web.ClientOptions} options
 * @constructor
 * @struct
 * @final
 */
proto.magnoliafabrics.MagnoliaFabricsServicePromiseClient =
    function(hostname, credentials, options) {
  if (!options) options = {};
  options.format = 'text';

  /**
   * @private @const {!grpc.web.GrpcWebClientBase} The client
   */
  this.client_ = new grpc.web.GrpcWebClientBase(options);

  /**
   * @private @const {string} The hostname
   */
  this.hostname_ = hostname;

};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.magnoliafabrics.GetAllFabricsRequest,
 *   !proto.magnoliafabrics.GetAllFabricsResponse>}
 */
const methodDescriptor_MagnoliaFabricsService_GetAllFabrics = new grpc.web.MethodDescriptor(
  '/magnoliafabrics.MagnoliaFabricsService/GetAllFabrics',
  grpc.web.MethodType.UNARY,
  proto.magnoliafabrics.GetAllFabricsRequest,
  proto.magnoliafabrics.GetAllFabricsResponse,
  /**
   * @param {!proto.magnoliafabrics.GetAllFabricsRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.magnoliafabrics.GetAllFabricsResponse.deserializeBinary
);


/**
 * @param {!proto.magnoliafabrics.GetAllFabricsRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.magnoliafabrics.GetAllFabricsResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.magnoliafabrics.GetAllFabricsResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.magnoliafabrics.MagnoliaFabricsServiceClient.prototype.getAllFabrics =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetAllFabrics',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetAllFabrics,
      callback);
};


/**
 * @param {!proto.magnoliafabrics.GetAllFabricsRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.magnoliafabrics.GetAllFabricsResponse>}
 *     Promise that resolves to the response
 */
proto.magnoliafabrics.MagnoliaFabricsServicePromiseClient.prototype.getAllFabrics =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetAllFabrics',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetAllFabrics);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.magnoliafabrics.GetAllFabricsWithoutInventoryRequest,
 *   !proto.magnoliafabrics.GetAllFabricsWithoutInventoryResponse>}
 */
const methodDescriptor_MagnoliaFabricsService_GetAllFabricsWithoutInventory = new grpc.web.MethodDescriptor(
  '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricsWithoutInventory',
  grpc.web.MethodType.UNARY,
  proto.magnoliafabrics.GetAllFabricsWithoutInventoryRequest,
  proto.magnoliafabrics.GetAllFabricsWithoutInventoryResponse,
  /**
   * @param {!proto.magnoliafabrics.GetAllFabricsWithoutInventoryRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.magnoliafabrics.GetAllFabricsWithoutInventoryResponse.deserializeBinary
);


/**
 * @param {!proto.magnoliafabrics.GetAllFabricsWithoutInventoryRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.magnoliafabrics.GetAllFabricsWithoutInventoryResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.magnoliafabrics.GetAllFabricsWithoutInventoryResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.magnoliafabrics.MagnoliaFabricsServiceClient.prototype.getAllFabricsWithoutInventory =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricsWithoutInventory',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetAllFabricsWithoutInventory,
      callback);
};


/**
 * @param {!proto.magnoliafabrics.GetAllFabricsWithoutInventoryRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.magnoliafabrics.GetAllFabricsWithoutInventoryResponse>}
 *     Promise that resolves to the response
 */
proto.magnoliafabrics.MagnoliaFabricsServicePromiseClient.prototype.getAllFabricsWithoutInventory =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricsWithoutInventory',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetAllFabricsWithoutInventory);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.magnoliafabrics.GetAllInventoryRequest,
 *   !proto.magnoliafabrics.GetAllInventoryResponse>}
 */
const methodDescriptor_MagnoliaFabricsService_GetAllInventory = new grpc.web.MethodDescriptor(
  '/magnoliafabrics.MagnoliaFabricsService/GetAllInventory',
  grpc.web.MethodType.UNARY,
  proto.magnoliafabrics.GetAllInventoryRequest,
  proto.magnoliafabrics.GetAllInventoryResponse,
  /**
   * @param {!proto.magnoliafabrics.GetAllInventoryRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.magnoliafabrics.GetAllInventoryResponse.deserializeBinary
);


/**
 * @param {!proto.magnoliafabrics.GetAllInventoryRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.magnoliafabrics.GetAllInventoryResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.magnoliafabrics.GetAllInventoryResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.magnoliafabrics.MagnoliaFabricsServiceClient.prototype.getAllInventory =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetAllInventory',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetAllInventory,
      callback);
};


/**
 * @param {!proto.magnoliafabrics.GetAllInventoryRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.magnoliafabrics.GetAllInventoryResponse>}
 *     Promise that resolves to the response
 */
proto.magnoliafabrics.MagnoliaFabricsServicePromiseClient.prototype.getAllInventory =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetAllInventory',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetAllInventory);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.magnoliafabrics.GetFabricByIDRequest,
 *   !proto.magnoliafabrics.GetFabricByIDResponse>}
 */
const methodDescriptor_MagnoliaFabricsService_GetFabricByID = new grpc.web.MethodDescriptor(
  '/magnoliafabrics.MagnoliaFabricsService/GetFabricByID',
  grpc.web.MethodType.UNARY,
  proto.magnoliafabrics.GetFabricByIDRequest,
  proto.magnoliafabrics.GetFabricByIDResponse,
  /**
   * @param {!proto.magnoliafabrics.GetFabricByIDRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.magnoliafabrics.GetFabricByIDResponse.deserializeBinary
);


/**
 * @param {!proto.magnoliafabrics.GetFabricByIDRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.magnoliafabrics.GetFabricByIDResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.magnoliafabrics.GetFabricByIDResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.magnoliafabrics.MagnoliaFabricsServiceClient.prototype.getFabricByID =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetFabricByID',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetFabricByID,
      callback);
};


/**
 * @param {!proto.magnoliafabrics.GetFabricByIDRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.magnoliafabrics.GetFabricByIDResponse>}
 *     Promise that resolves to the response
 */
proto.magnoliafabrics.MagnoliaFabricsServicePromiseClient.prototype.getFabricByID =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetFabricByID',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetFabricByID);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.magnoliafabrics.GetFabricByNameRequest,
 *   !proto.magnoliafabrics.GetFabricByNameResponse>}
 */
const methodDescriptor_MagnoliaFabricsService_GetFabricByName = new grpc.web.MethodDescriptor(
  '/magnoliafabrics.MagnoliaFabricsService/GetFabricByName',
  grpc.web.MethodType.UNARY,
  proto.magnoliafabrics.GetFabricByNameRequest,
  proto.magnoliafabrics.GetFabricByNameResponse,
  /**
   * @param {!proto.magnoliafabrics.GetFabricByNameRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.magnoliafabrics.GetFabricByNameResponse.deserializeBinary
);


/**
 * @param {!proto.magnoliafabrics.GetFabricByNameRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.magnoliafabrics.GetFabricByNameResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.magnoliafabrics.GetFabricByNameResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.magnoliafabrics.MagnoliaFabricsServiceClient.prototype.getFabricByName =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetFabricByName',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetFabricByName,
      callback);
};


/**
 * @param {!proto.magnoliafabrics.GetFabricByNameRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.magnoliafabrics.GetFabricByNameResponse>}
 *     Promise that resolves to the response
 */
proto.magnoliafabrics.MagnoliaFabricsServicePromiseClient.prototype.getFabricByName =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetFabricByName',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetFabricByName);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.magnoliafabrics.GetAllFabricTaxonomyRequest,
 *   !proto.magnoliafabrics.GetAllFabricTaxonomyResponse>}
 */
const methodDescriptor_MagnoliaFabricsService_GetAllFabricTaxonomy = new grpc.web.MethodDescriptor(
  '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricTaxonomy',
  grpc.web.MethodType.UNARY,
  proto.magnoliafabrics.GetAllFabricTaxonomyRequest,
  proto.magnoliafabrics.GetAllFabricTaxonomyResponse,
  /**
   * @param {!proto.magnoliafabrics.GetAllFabricTaxonomyRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.magnoliafabrics.GetAllFabricTaxonomyResponse.deserializeBinary
);


/**
 * @param {!proto.magnoliafabrics.GetAllFabricTaxonomyRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.magnoliafabrics.GetAllFabricTaxonomyResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.magnoliafabrics.GetAllFabricTaxonomyResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.magnoliafabrics.MagnoliaFabricsServiceClient.prototype.getAllFabricTaxonomy =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricTaxonomy',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetAllFabricTaxonomy,
      callback);
};


/**
 * @param {!proto.magnoliafabrics.GetAllFabricTaxonomyRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.magnoliafabrics.GetAllFabricTaxonomyResponse>}
 *     Promise that resolves to the response
 */
proto.magnoliafabrics.MagnoliaFabricsServicePromiseClient.prototype.getAllFabricTaxonomy =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricTaxonomy',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetAllFabricTaxonomy);
};


/**
 * @const
 * @type {!grpc.web.MethodDescriptor<
 *   !proto.magnoliafabrics.GetCleaningCodesRequest,
 *   !proto.magnoliafabrics.GetCleaningCodesResponse>}
 */
const methodDescriptor_MagnoliaFabricsService_GetCleaningCodes = new grpc.web.MethodDescriptor(
  '/magnoliafabrics.MagnoliaFabricsService/GetCleaningCodes',
  grpc.web.MethodType.UNARY,
  proto.magnoliafabrics.GetCleaningCodesRequest,
  proto.magnoliafabrics.GetCleaningCodesResponse,
  /**
   * @param {!proto.magnoliafabrics.GetCleaningCodesRequest} request
   * @return {!Uint8Array}
   */
  function(request) {
    return request.serializeBinary();
  },
  proto.magnoliafabrics.GetCleaningCodesResponse.deserializeBinary
);


/**
 * @param {!proto.magnoliafabrics.GetCleaningCodesRequest} request The
 *     request proto
 * @param {?Object<string, string>} metadata User defined
 *     call metadata
 * @param {function(?grpc.web.RpcError, ?proto.magnoliafabrics.GetCleaningCodesResponse)}
 *     callback The callback function(error, response)
 * @return {!grpc.web.ClientReadableStream<!proto.magnoliafabrics.GetCleaningCodesResponse>|undefined}
 *     The XHR Node Readable Stream
 */
proto.magnoliafabrics.MagnoliaFabricsServiceClient.prototype.getCleaningCodes =
    function(request, metadata, callback) {
  return this.client_.rpcCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetCleaningCodes',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetCleaningCodes,
      callback);
};


/**
 * @param {!proto.magnoliafabrics.GetCleaningCodesRequest} request The
 *     request proto
 * @param {?Object<string, string>=} metadata User defined
 *     call metadata
 * @return {!Promise<!proto.magnoliafabrics.GetCleaningCodesResponse>}
 *     Promise that resolves to the response
 */
proto.magnoliafabrics.MagnoliaFabricsServicePromiseClient.prototype.getCleaningCodes =
    function(request, metadata) {
  return this.client_.unaryCall(this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetCleaningCodes',
      request,
      metadata || {},
      methodDescriptor_MagnoliaFabricsService_GetCleaningCodes);
};


module.exports = proto.magnoliafabrics;

