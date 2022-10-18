/**
 * @fileoverview gRPC-Web generated client stub for magnoliafabrics
 * @enhanceable
 * @public
 */

// GENERATED CODE -- DO NOT EDIT!


/* eslint-disable */
// @ts-nocheck


import * as grpcWeb from 'grpc-web';

import * as magnolia_service_pb from './magnolia_service_pb';


export class MagnoliaFabricsServiceClient {
  client_: grpcWeb.AbstractClientBase;
  hostname_: string;
  credentials_: null | { [index: string]: string; };
  options_: null | { [index: string]: any; };

  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; }) {
    if (!options) options = {};
    if (!credentials) credentials = {};
    options['format'] = 'text';

    this.client_ = new grpcWeb.GrpcWebClientBase(options);
    this.hostname_ = hostname;
    this.credentials_ = credentials;
    this.options_ = options;
  }

  methodInfoGetAllFabrics = new grpcWeb.MethodDescriptor(
    '/magnoliafabrics.MagnoliaFabricsService/GetAllFabrics',
    grpcWeb.MethodType.UNARY,
    magnolia_service_pb.GetAllFabricsRequest,
    magnolia_service_pb.GetAllFabricsResponse,
    (request: magnolia_service_pb.GetAllFabricsRequest) => {
      return request.serializeBinary();
    },
    magnolia_service_pb.GetAllFabricsResponse.deserializeBinary
  );

  getAllFabrics(
    request: magnolia_service_pb.GetAllFabricsRequest,
    metadata: grpcWeb.Metadata | null): Promise<magnolia_service_pb.GetAllFabricsResponse>;

  getAllFabrics(
    request: magnolia_service_pb.GetAllFabricsRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetAllFabricsResponse) => void): grpcWeb.ClientReadableStream<magnolia_service_pb.GetAllFabricsResponse>;

  getAllFabrics(
    request: magnolia_service_pb.GetAllFabricsRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetAllFabricsResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/magnoliafabrics.MagnoliaFabricsService/GetAllFabrics',
        request,
        metadata || {},
        this.methodInfoGetAllFabrics,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetAllFabrics',
    request,
    metadata || {},
    this.methodInfoGetAllFabrics);
  }

  methodInfoGetAllFabricsWithoutInventory = new grpcWeb.MethodDescriptor(
    '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricsWithoutInventory',
    grpcWeb.MethodType.UNARY,
    magnolia_service_pb.GetAllFabricsWithoutInventoryRequest,
    magnolia_service_pb.GetAllFabricsWithoutInventoryResponse,
    (request: magnolia_service_pb.GetAllFabricsWithoutInventoryRequest) => {
      return request.serializeBinary();
    },
    magnolia_service_pb.GetAllFabricsWithoutInventoryResponse.deserializeBinary
  );

  getAllFabricsWithoutInventory(
    request: magnolia_service_pb.GetAllFabricsWithoutInventoryRequest,
    metadata: grpcWeb.Metadata | null): Promise<magnolia_service_pb.GetAllFabricsWithoutInventoryResponse>;

  getAllFabricsWithoutInventory(
    request: magnolia_service_pb.GetAllFabricsWithoutInventoryRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetAllFabricsWithoutInventoryResponse) => void): grpcWeb.ClientReadableStream<magnolia_service_pb.GetAllFabricsWithoutInventoryResponse>;

  getAllFabricsWithoutInventory(
    request: magnolia_service_pb.GetAllFabricsWithoutInventoryRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetAllFabricsWithoutInventoryResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricsWithoutInventory',
        request,
        metadata || {},
        this.methodInfoGetAllFabricsWithoutInventory,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricsWithoutInventory',
    request,
    metadata || {},
    this.methodInfoGetAllFabricsWithoutInventory);
  }

  methodInfoGetAllInventory = new grpcWeb.MethodDescriptor(
    '/magnoliafabrics.MagnoliaFabricsService/GetAllInventory',
    grpcWeb.MethodType.UNARY,
    magnolia_service_pb.GetAllInventoryRequest,
    magnolia_service_pb.GetAllInventoryResponse,
    (request: magnolia_service_pb.GetAllInventoryRequest) => {
      return request.serializeBinary();
    },
    magnolia_service_pb.GetAllInventoryResponse.deserializeBinary
  );

  getAllInventory(
    request: magnolia_service_pb.GetAllInventoryRequest,
    metadata: grpcWeb.Metadata | null): Promise<magnolia_service_pb.GetAllInventoryResponse>;

  getAllInventory(
    request: magnolia_service_pb.GetAllInventoryRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetAllInventoryResponse) => void): grpcWeb.ClientReadableStream<magnolia_service_pb.GetAllInventoryResponse>;

  getAllInventory(
    request: magnolia_service_pb.GetAllInventoryRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetAllInventoryResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/magnoliafabrics.MagnoliaFabricsService/GetAllInventory',
        request,
        metadata || {},
        this.methodInfoGetAllInventory,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetAllInventory',
    request,
    metadata || {},
    this.methodInfoGetAllInventory);
  }

  methodInfoGetFabricByID = new grpcWeb.MethodDescriptor(
    '/magnoliafabrics.MagnoliaFabricsService/GetFabricByID',
    grpcWeb.MethodType.UNARY,
    magnolia_service_pb.GetFabricByIDRequest,
    magnolia_service_pb.GetFabricByIDResponse,
    (request: magnolia_service_pb.GetFabricByIDRequest) => {
      return request.serializeBinary();
    },
    magnolia_service_pb.GetFabricByIDResponse.deserializeBinary
  );

  getFabricByID(
    request: magnolia_service_pb.GetFabricByIDRequest,
    metadata: grpcWeb.Metadata | null): Promise<magnolia_service_pb.GetFabricByIDResponse>;

  getFabricByID(
    request: magnolia_service_pb.GetFabricByIDRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetFabricByIDResponse) => void): grpcWeb.ClientReadableStream<magnolia_service_pb.GetFabricByIDResponse>;

  getFabricByID(
    request: magnolia_service_pb.GetFabricByIDRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetFabricByIDResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/magnoliafabrics.MagnoliaFabricsService/GetFabricByID',
        request,
        metadata || {},
        this.methodInfoGetFabricByID,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetFabricByID',
    request,
    metadata || {},
    this.methodInfoGetFabricByID);
  }

  methodInfoGetFabricByName = new grpcWeb.MethodDescriptor(
    '/magnoliafabrics.MagnoliaFabricsService/GetFabricByName',
    grpcWeb.MethodType.UNARY,
    magnolia_service_pb.GetFabricByNameRequest,
    magnolia_service_pb.GetFabricByNameResponse,
    (request: magnolia_service_pb.GetFabricByNameRequest) => {
      return request.serializeBinary();
    },
    magnolia_service_pb.GetFabricByNameResponse.deserializeBinary
  );

  getFabricByName(
    request: magnolia_service_pb.GetFabricByNameRequest,
    metadata: grpcWeb.Metadata | null): Promise<magnolia_service_pb.GetFabricByNameResponse>;

  getFabricByName(
    request: magnolia_service_pb.GetFabricByNameRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetFabricByNameResponse) => void): grpcWeb.ClientReadableStream<magnolia_service_pb.GetFabricByNameResponse>;

  getFabricByName(
    request: magnolia_service_pb.GetFabricByNameRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetFabricByNameResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/magnoliafabrics.MagnoliaFabricsService/GetFabricByName',
        request,
        metadata || {},
        this.methodInfoGetFabricByName,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetFabricByName',
    request,
    metadata || {},
    this.methodInfoGetFabricByName);
  }

  methodInfoGetAllFabricTaxonomy = new grpcWeb.MethodDescriptor(
    '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricTaxonomy',
    grpcWeb.MethodType.UNARY,
    magnolia_service_pb.GetAllFabricTaxonomyRequest,
    magnolia_service_pb.GetAllFabricTaxonomyResponse,
    (request: magnolia_service_pb.GetAllFabricTaxonomyRequest) => {
      return request.serializeBinary();
    },
    magnolia_service_pb.GetAllFabricTaxonomyResponse.deserializeBinary
  );

  getAllFabricTaxonomy(
    request: magnolia_service_pb.GetAllFabricTaxonomyRequest,
    metadata: grpcWeb.Metadata | null): Promise<magnolia_service_pb.GetAllFabricTaxonomyResponse>;

  getAllFabricTaxonomy(
    request: magnolia_service_pb.GetAllFabricTaxonomyRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetAllFabricTaxonomyResponse) => void): grpcWeb.ClientReadableStream<magnolia_service_pb.GetAllFabricTaxonomyResponse>;

  getAllFabricTaxonomy(
    request: magnolia_service_pb.GetAllFabricTaxonomyRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetAllFabricTaxonomyResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricTaxonomy',
        request,
        metadata || {},
        this.methodInfoGetAllFabricTaxonomy,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricTaxonomy',
    request,
    metadata || {},
    this.methodInfoGetAllFabricTaxonomy);
  }

  methodInfoGetCleaningCodes = new grpcWeb.MethodDescriptor(
    '/magnoliafabrics.MagnoliaFabricsService/GetCleaningCodes',
    grpcWeb.MethodType.UNARY,
    magnolia_service_pb.GetCleaningCodesRequest,
    magnolia_service_pb.GetCleaningCodesResponse,
    (request: magnolia_service_pb.GetCleaningCodesRequest) => {
      return request.serializeBinary();
    },
    magnolia_service_pb.GetCleaningCodesResponse.deserializeBinary
  );

  getCleaningCodes(
    request: magnolia_service_pb.GetCleaningCodesRequest,
    metadata: grpcWeb.Metadata | null): Promise<magnolia_service_pb.GetCleaningCodesResponse>;

  getCleaningCodes(
    request: magnolia_service_pb.GetCleaningCodesRequest,
    metadata: grpcWeb.Metadata | null,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetCleaningCodesResponse) => void): grpcWeb.ClientReadableStream<magnolia_service_pb.GetCleaningCodesResponse>;

  getCleaningCodes(
    request: magnolia_service_pb.GetCleaningCodesRequest,
    metadata: grpcWeb.Metadata | null,
    callback?: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetCleaningCodesResponse) => void) {
    if (callback !== undefined) {
      return this.client_.rpcCall(
        this.hostname_ +
          '/magnoliafabrics.MagnoliaFabricsService/GetCleaningCodes',
        request,
        metadata || {},
        this.methodInfoGetCleaningCodes,
        callback);
    }
    return this.client_.unaryCall(
    this.hostname_ +
      '/magnoliafabrics.MagnoliaFabricsService/GetCleaningCodes',
    request,
    metadata || {},
    this.methodInfoGetCleaningCodes);
  }

}

