"use strict";

import createReturnObj from "./createReturnObj.js";
import {
  MagnoliaFabricsServicePromiseClient,
  GetAllFabricsRequest,
  GetAllFabricsWithoutInventoryRequest,
  GetAllFabricTaxonomyRequest,
  GetAllInventoryRequest,
  GetCleaningCodesRequest,
  GetFabricByIDRequest,
  GetFabricByNameRequest,
  GetFabricBySKURequest,
} from "./grpc/magnolia_service_grpc_web_pb.js";

///////////////////////////////////////
// The object that will be exposed to
// consumers of this library as the
// magfabrics API interface.
///////////////////////////////////////
const magfabrics = {
  client: null,
  metadata: null,
};

///////////////////////////////////////
// Creates the gRPC Web Client
///////////////////////////////////////
magfabrics.initialize = (apiKey) => {
  if (!apiKey || typeof apiKey !== "string") {
    throw "Argument must be of type string. Please supply an API key for authentication.";
  }

  magfabrics.metadata = { "x-api-key": apiKey };

  try {
    magfabrics.client = new MagnoliaFabricsServicePromiseClient(
      "https://api.magfabrics.com"
    );
  } catch (err) {
    return createReturnObj(
      null,
      `Failed to initialize grpc client for magfabrics API.\n ${err}`
    );
  }

  return createReturnObj(magfabrics.client, null);
};

///////////////////////////////////////
// Returns the full catalog of fabrics
///////////////////////////////////////
magfabrics.getAllFabrics = async () => {
  let fabrics;

  try {
    const request = new GetAllFabricsRequest();
    fabrics = await magfabrics.client.getAllFabrics(
      request,
      magfabrics.metadata
    );
  } catch (err) {
    return createReturnObj(null, `Failed to request full catalog\n ${err}`);
  }

  return createReturnObj(fabrics.toObject(), null);
};

///////////////////////////////////////
// Returns the full catalog of fabrics
// without inventory data included.
///////////////////////////////////////
magfabrics.getAllFabricsWithoutInventory = async () => {
  let fabrics;

  try {
    const request = new GetAllFabricsWithoutInventoryRequest();
    fabrics = await magfabrics.client.getAllFabricsWithoutInventory(
      request,
      magfabrics.metadata
    );
  } catch (err) {
    return createReturnObj(
      null,
      `Failed to request full catalog without inventory\n ${err}`
    );
  }

  return createReturnObj(fabrics.toObject(), null);
};

///////////////////////////////////////
// Returns taxonomies for the full
// catalog of fabrics
///////////////////////////////////////
magfabrics.getAllFabricTaxonomies = async () => {
  let taxonomies;

  try {
    const request = new GetAllFabricTaxonomyRequest();
    taxonomies = await magfabrics.client.getAllFabricTaxonomy(
      request,
      magfabrics.metadata
    );
  } catch (err) {
    return createReturnObj(
      null,
      `Failed to request fabric taxonomies\n ${err}`
    );
  }

  return createReturnObj(taxonomies.toObject(), null);
};

///////////////////////////////////////
// Returns the inventory data for the
// full catalog of fabrics.
///////////////////////////////////////
magfabrics.getAllInventory = async () => {
  let inventory;

  try {
    const request = new GetAllInventoryRequest();
    inventory = await magfabrics.client.getAllInventory(
      request,
      magfabrics.metadata
    );
  } catch (err) {
    return createReturnObj(null, `Failed to request all Inventory\n ${err}`);
  }

  return createReturnObj(inventory.toObject(), null);
};

///////////////////////////////////////
// Returns the cleaning codes used
// by magfabrics Fabrics.
///////////////////////////////////////
magfabrics.getCleaningCodes = async () => {
  let cleaningCodes;

  try {
    const request = new GetCleaningCodesRequest();
    cleaningCodes = await magfabrics.client.getCleaningCodes(
      request,
      magfabrics.metadata
    );
  } catch (err) {
    return createReturnObj(null, `Failed to request cleaning codes\n ${err}`);
  }

  return createReturnObj(cleaningCodes.toObject(), null);
};

///////////////////////////////////////
// Returns a fabric if one exists with
// the specified id.
///////////////////////////////////////
magfabrics.getFabricById = async (id) => {
  let fabric;

  try {
    const request = new GetFabricByIDRequest();
    request.setFabricId(id);
    fabric = await magfabrics.client.getFabricByID(
      request,
      magfabrics.metadata
    );
  } catch (err) {
    return createReturnObj(null, `Failed to request fabric by id\n ${err}`);
  }

  return createReturnObj(fabric.toObject(), null);
};

///////////////////////////////////////
// Returns fabrics if any exists with
// the specified name.
///////////////////////////////////////
magfabrics.getFabricByName = async (name) => {
  let fabric;

  try {
    const request = new GetFabricByNameRequest();
    request.setFabricName(name);
    fabric = await magfabrics.client.getFabricByName(
      request,
      magfabrics.metadata
    );
  } catch (err) {
    return createReturnObj(null, `Failed to request fabric by name\n ${err}`);
  }

  return createReturnObj(fabric.toObject(), null);
};

///////////////////////////////////////
// Returns fabrics if any exists with
// the specified sku.
///////////////////////////////////////
magfabrics.getFabricBySku = async (sku) => {
  let fabric;

  try {
    const request = new GetFabricBySKURequest();
    request.setFabricSku(sku);
    fabric = await magfabrics.client.getFabricBySKU(
      request,
      magfabrics.metadata
    );
  } catch (err) {
    return createReturnObj(null, `Failed to request fabric by sku\n ${err}`);
  }

  return createReturnObj(fabric.toObject(), null);
};

window.magfabrics = magfabrics;
