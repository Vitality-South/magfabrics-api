import * as grpcWeb from 'grpc-web';

import * as magnolia_service_pb from './magnolia_service_pb';


export class MagnoliaFabricsServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  getAllFabrics(
    request: magnolia_service_pb.GetAllFabricsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetAllFabricsResponse) => void
  ): grpcWeb.ClientReadableStream<magnolia_service_pb.GetAllFabricsResponse>;

  getAllFabricsWithoutInventory(
    request: magnolia_service_pb.GetAllFabricsWithoutInventoryRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetAllFabricsWithoutInventoryResponse) => void
  ): grpcWeb.ClientReadableStream<magnolia_service_pb.GetAllFabricsWithoutInventoryResponse>;

  getAllInventory(
    request: magnolia_service_pb.GetAllInventoryRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetAllInventoryResponse) => void
  ): grpcWeb.ClientReadableStream<magnolia_service_pb.GetAllInventoryResponse>;

  getFabricByID(
    request: magnolia_service_pb.GetFabricByIDRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetFabricByIDResponse) => void
  ): grpcWeb.ClientReadableStream<magnolia_service_pb.GetFabricByIDResponse>;

  getFabricByName(
    request: magnolia_service_pb.GetFabricByNameRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetFabricByNameResponse) => void
  ): grpcWeb.ClientReadableStream<magnolia_service_pb.GetFabricByNameResponse>;

  getFabricBySKU(
    request: magnolia_service_pb.GetFabricBySKURequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetFabricBySKUResponse) => void
  ): grpcWeb.ClientReadableStream<magnolia_service_pb.GetFabricBySKUResponse>;

  getAllFabricTaxonomy(
    request: magnolia_service_pb.GetAllFabricTaxonomyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetAllFabricTaxonomyResponse) => void
  ): grpcWeb.ClientReadableStream<magnolia_service_pb.GetAllFabricTaxonomyResponse>;

  getCleaningCodes(
    request: magnolia_service_pb.GetCleaningCodesRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: magnolia_service_pb.GetCleaningCodesResponse) => void
  ): grpcWeb.ClientReadableStream<magnolia_service_pb.GetCleaningCodesResponse>;

}

export class MagnoliaFabricsServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  getAllFabrics(
    request: magnolia_service_pb.GetAllFabricsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<magnolia_service_pb.GetAllFabricsResponse>;

  getAllFabricsWithoutInventory(
    request: magnolia_service_pb.GetAllFabricsWithoutInventoryRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<magnolia_service_pb.GetAllFabricsWithoutInventoryResponse>;

  getAllInventory(
    request: magnolia_service_pb.GetAllInventoryRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<magnolia_service_pb.GetAllInventoryResponse>;

  getFabricByID(
    request: magnolia_service_pb.GetFabricByIDRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<magnolia_service_pb.GetFabricByIDResponse>;

  getFabricByName(
    request: magnolia_service_pb.GetFabricByNameRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<magnolia_service_pb.GetFabricByNameResponse>;

  getFabricBySKU(
    request: magnolia_service_pb.GetFabricBySKURequest,
    metadata?: grpcWeb.Metadata
  ): Promise<magnolia_service_pb.GetFabricBySKUResponse>;

  getAllFabricTaxonomy(
    request: magnolia_service_pb.GetAllFabricTaxonomyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<magnolia_service_pb.GetAllFabricTaxonomyResponse>;

  getCleaningCodes(
    request: magnolia_service_pb.GetCleaningCodesRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<magnolia_service_pb.GetCleaningCodesResponse>;

}

