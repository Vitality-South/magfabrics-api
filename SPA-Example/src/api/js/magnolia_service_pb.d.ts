import * as jspb from 'google-protobuf'

import * as api_inventory_pb from './api_inventory_pb';
import * as api_fabric_pb from './api_fabric_pb';
import * as api_taxonomy_pb from './api_taxonomy_pb';
import * as cleaning_code_pb from './cleaning_code_pb';


export class GetAllFabricsRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllFabricsRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllFabricsRequest): GetAllFabricsRequest.AsObject;
  static serializeBinaryToWriter(message: GetAllFabricsRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllFabricsRequest;
  static deserializeBinaryFromReader(message: GetAllFabricsRequest, reader: jspb.BinaryReader): GetAllFabricsRequest;
}

export namespace GetAllFabricsRequest {
  export type AsObject = {
  }
}

export class GetAllFabricsResponse extends jspb.Message {
  getFabricsList(): Array<api_fabric_pb.Fabric>;
  setFabricsList(value: Array<api_fabric_pb.Fabric>): GetAllFabricsResponse;
  clearFabricsList(): GetAllFabricsResponse;
  addFabrics(value?: api_fabric_pb.Fabric, index?: number): api_fabric_pb.Fabric;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllFabricsResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllFabricsResponse): GetAllFabricsResponse.AsObject;
  static serializeBinaryToWriter(message: GetAllFabricsResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllFabricsResponse;
  static deserializeBinaryFromReader(message: GetAllFabricsResponse, reader: jspb.BinaryReader): GetAllFabricsResponse;
}

export namespace GetAllFabricsResponse {
  export type AsObject = {
    fabricsList: Array<api_fabric_pb.Fabric.AsObject>,
  }
}

export class GetAllFabricsWithoutInventoryRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllFabricsWithoutInventoryRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllFabricsWithoutInventoryRequest): GetAllFabricsWithoutInventoryRequest.AsObject;
  static serializeBinaryToWriter(message: GetAllFabricsWithoutInventoryRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllFabricsWithoutInventoryRequest;
  static deserializeBinaryFromReader(message: GetAllFabricsWithoutInventoryRequest, reader: jspb.BinaryReader): GetAllFabricsWithoutInventoryRequest;
}

export namespace GetAllFabricsWithoutInventoryRequest {
  export type AsObject = {
  }
}

export class GetAllFabricsWithoutInventoryResponse extends jspb.Message {
  getFabricsList(): Array<api_fabric_pb.Fabric>;
  setFabricsList(value: Array<api_fabric_pb.Fabric>): GetAllFabricsWithoutInventoryResponse;
  clearFabricsList(): GetAllFabricsWithoutInventoryResponse;
  addFabrics(value?: api_fabric_pb.Fabric, index?: number): api_fabric_pb.Fabric;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllFabricsWithoutInventoryResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllFabricsWithoutInventoryResponse): GetAllFabricsWithoutInventoryResponse.AsObject;
  static serializeBinaryToWriter(message: GetAllFabricsWithoutInventoryResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllFabricsWithoutInventoryResponse;
  static deserializeBinaryFromReader(message: GetAllFabricsWithoutInventoryResponse, reader: jspb.BinaryReader): GetAllFabricsWithoutInventoryResponse;
}

export namespace GetAllFabricsWithoutInventoryResponse {
  export type AsObject = {
    fabricsList: Array<api_fabric_pb.Fabric.AsObject>,
  }
}

export class GetAllInventoryRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllInventoryRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllInventoryRequest): GetAllInventoryRequest.AsObject;
  static serializeBinaryToWriter(message: GetAllInventoryRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllInventoryRequest;
  static deserializeBinaryFromReader(message: GetAllInventoryRequest, reader: jspb.BinaryReader): GetAllInventoryRequest;
}

export namespace GetAllInventoryRequest {
  export type AsObject = {
  }
}

export class GetAllInventoryResponse extends jspb.Message {
  getInventoryList(): Array<api_inventory_pb.Inventory>;
  setInventoryList(value: Array<api_inventory_pb.Inventory>): GetAllInventoryResponse;
  clearInventoryList(): GetAllInventoryResponse;
  addInventory(value?: api_inventory_pb.Inventory, index?: number): api_inventory_pb.Inventory;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllInventoryResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllInventoryResponse): GetAllInventoryResponse.AsObject;
  static serializeBinaryToWriter(message: GetAllInventoryResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllInventoryResponse;
  static deserializeBinaryFromReader(message: GetAllInventoryResponse, reader: jspb.BinaryReader): GetAllInventoryResponse;
}

export namespace GetAllInventoryResponse {
  export type AsObject = {
    inventoryList: Array<api_inventory_pb.Inventory.AsObject>,
  }
}

export class GetFabricByIDRequest extends jspb.Message {
  getFabricId(): string;
  setFabricId(value: string): GetFabricByIDRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetFabricByIDRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetFabricByIDRequest): GetFabricByIDRequest.AsObject;
  static serializeBinaryToWriter(message: GetFabricByIDRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetFabricByIDRequest;
  static deserializeBinaryFromReader(message: GetFabricByIDRequest, reader: jspb.BinaryReader): GetFabricByIDRequest;
}

export namespace GetFabricByIDRequest {
  export type AsObject = {
    fabricId: string,
  }
}

export class GetFabricByIDResponse extends jspb.Message {
  getFabric(): api_fabric_pb.Fabric | undefined;
  setFabric(value?: api_fabric_pb.Fabric): GetFabricByIDResponse;
  hasFabric(): boolean;
  clearFabric(): GetFabricByIDResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetFabricByIDResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetFabricByIDResponse): GetFabricByIDResponse.AsObject;
  static serializeBinaryToWriter(message: GetFabricByIDResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetFabricByIDResponse;
  static deserializeBinaryFromReader(message: GetFabricByIDResponse, reader: jspb.BinaryReader): GetFabricByIDResponse;
}

export namespace GetFabricByIDResponse {
  export type AsObject = {
    fabric?: api_fabric_pb.Fabric.AsObject,
  }
}

export class GetFabricByNameRequest extends jspb.Message {
  getFabricName(): string;
  setFabricName(value: string): GetFabricByNameRequest;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetFabricByNameRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetFabricByNameRequest): GetFabricByNameRequest.AsObject;
  static serializeBinaryToWriter(message: GetFabricByNameRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetFabricByNameRequest;
  static deserializeBinaryFromReader(message: GetFabricByNameRequest, reader: jspb.BinaryReader): GetFabricByNameRequest;
}

export namespace GetFabricByNameRequest {
  export type AsObject = {
    fabricName: string,
  }
}

export class GetFabricByNameResponse extends jspb.Message {
  getFabric(): api_fabric_pb.Fabric | undefined;
  setFabric(value?: api_fabric_pb.Fabric): GetFabricByNameResponse;
  hasFabric(): boolean;
  clearFabric(): GetFabricByNameResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetFabricByNameResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetFabricByNameResponse): GetFabricByNameResponse.AsObject;
  static serializeBinaryToWriter(message: GetFabricByNameResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetFabricByNameResponse;
  static deserializeBinaryFromReader(message: GetFabricByNameResponse, reader: jspb.BinaryReader): GetFabricByNameResponse;
}

export namespace GetFabricByNameResponse {
  export type AsObject = {
    fabric?: api_fabric_pb.Fabric.AsObject,
  }
}

export class GetAllFabricTaxonomyRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllFabricTaxonomyRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllFabricTaxonomyRequest): GetAllFabricTaxonomyRequest.AsObject;
  static serializeBinaryToWriter(message: GetAllFabricTaxonomyRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllFabricTaxonomyRequest;
  static deserializeBinaryFromReader(message: GetAllFabricTaxonomyRequest, reader: jspb.BinaryReader): GetAllFabricTaxonomyRequest;
}

export namespace GetAllFabricTaxonomyRequest {
  export type AsObject = {
  }
}

export class GetAllFabricTaxonomyResponse extends jspb.Message {
  getTaxonomy(): api_taxonomy_pb.Taxonomy | undefined;
  setTaxonomy(value?: api_taxonomy_pb.Taxonomy): GetAllFabricTaxonomyResponse;
  hasTaxonomy(): boolean;
  clearTaxonomy(): GetAllFabricTaxonomyResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetAllFabricTaxonomyResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetAllFabricTaxonomyResponse): GetAllFabricTaxonomyResponse.AsObject;
  static serializeBinaryToWriter(message: GetAllFabricTaxonomyResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetAllFabricTaxonomyResponse;
  static deserializeBinaryFromReader(message: GetAllFabricTaxonomyResponse, reader: jspb.BinaryReader): GetAllFabricTaxonomyResponse;
}

export namespace GetAllFabricTaxonomyResponse {
  export type AsObject = {
    taxonomy?: api_taxonomy_pb.Taxonomy.AsObject,
  }
}

export class GetCleaningCodesRequest extends jspb.Message {
  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetCleaningCodesRequest.AsObject;
  static toObject(includeInstance: boolean, msg: GetCleaningCodesRequest): GetCleaningCodesRequest.AsObject;
  static serializeBinaryToWriter(message: GetCleaningCodesRequest, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetCleaningCodesRequest;
  static deserializeBinaryFromReader(message: GetCleaningCodesRequest, reader: jspb.BinaryReader): GetCleaningCodesRequest;
}

export namespace GetCleaningCodesRequest {
  export type AsObject = {
  }
}

export class GetCleaningCodesResponse extends jspb.Message {
  getCleaningCodesMap(): jspb.Map<string, cleaning_code_pb.CleaningCode>;
  clearCleaningCodesMap(): GetCleaningCodesResponse;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GetCleaningCodesResponse.AsObject;
  static toObject(includeInstance: boolean, msg: GetCleaningCodesResponse): GetCleaningCodesResponse.AsObject;
  static serializeBinaryToWriter(message: GetCleaningCodesResponse, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GetCleaningCodesResponse;
  static deserializeBinaryFromReader(message: GetCleaningCodesResponse, reader: jspb.BinaryReader): GetCleaningCodesResponse;
}

export namespace GetCleaningCodesResponse {
  export type AsObject = {
    cleaningCodesMap: Array<[string, cleaning_code_pb.CleaningCode.AsObject]>,
  }
}

