import createReturnObj from "./createReturnObj.js";
import {
  MagnoliaFabricsServicePromiseClient,
  GetAllFabricsRequest,
  GetAllFabricsWithoutInventoryRequest,
  GetAllFabricTaxonomiesRequest,
  GetAllInventoryRequest,
  GetCleaningCodesRequest,
  GetFabricByIDRequest,
  GetFabricByNameRequest,
} from "./grpc/magnolia_service_grpc_web_pb.js";

///////////////////////////////////////
// The object that will be exposed to
// consumers of this library as the
// Magnolia API interface.
///////////////////////////////////////
const magnolia = {
  client: null,
};

///////////////////////////////////////
// Creates the gRPC Web Client
///////////////////////////////////////
magnolia.initialize = () => {
  try {
    magnolia.client = new MagnoliaFabricsServicePromiseClient(
      "https://grpcweb.vitalitysouthosting.net"
    );
  } catch (err) {
    return createReturnObj(
      null,
      `Failed to initialize grpc client for Magnolia Fabrics API.\n ${err}`
    );
  }

  return createReturnObj(magnolia.client, null);
};

///////////////////////////////////////
// Returns the full catalog of fabrics
///////////////////////////////////////
magnolia.getAllFabrics = async () => {
  let fabrics;

  try {
    const request = new GetAllFabricsRequest();
    fabrics = await magnolia.client.getAllFabrics(request, {});
    console.log(`Fabrics: `, fabrics);
  } catch (err) {
    return createReturnObj(null, `Failed to request full catalog\n ${err}`);
  }

  return createReturnObj(fabrics, null);
};

///////////////////////////////////////
// Returns the full catalog of fabrics
// without inventory data included.
///////////////////////////////////////
magnolia.getAllFabricsWithoutInventory = async () => {
  let fabrics;

  try {
    const request = new GetAllFabricsWithoutInventoryRequest();
    fabrics = await magnolia.client.getAllFabricsWithoutInventory(request, {});
    console.log(`Fabrics: `, fabrics);
  } catch (err) {
    return createReturnObj(
      null,
      `Failed to request full catalog without inventory\n ${err}`
    );
  }

  return createReturnObj(fabrics, null);
};

///////////////////////////////////////
// Returns taxonomies for the full
// catalog of fabrics
///////////////////////////////////////
magnolia.getAllFabricTaxonomies = async () => {
  let taxonomies;

  try {
    const request = new GetAllFabricTaxonomiesRequest();
    taxonomies = await magnolia.client.getAllFabricTaxonomies(request, {});
  } catch (err) {
    return createReturnObj(
      null,
      `Failed to request fabric taxonomies\n ${err}`
    );
  }
};

///////////////////////////////////////
// Returns the inventory data for the
// full catalog of fabrics.
///////////////////////////////////////
magnolia.getAllInventory = async () => {
  let inventory;

  try {
    const request = new GetAllInventoryRequest();
    inventory = await magnolia.client.getAllInventory(request, {});
  } catch (err) {
    return createReturnObj(null, `Failed to request all Inventory\n ${err}`);
  }

  return createReturnObj(inventory, null);
};

///////////////////////////////////////
// Returns the cleaning codes used
// by Magnolia Fabrics.
///////////////////////////////////////
magnolia.getCleaningCodes = async () => {
  let cleaningCodes;

  try{
    const request = new GetCleaningCodesRequest();
    cleaningCodes = await magnolia.client.getCleaningCodes(request, {})
    console.log(`Cleaning Codes: ${cleaningCodes}`)
  }catch(err){
    return createReturnObj(null, `Failed to request cleaning codes\n ${err}`)
  }

  return createReturnObj(cleaningCodes, null)
};

///////////////////////////////////////
// Returns a fabric if one exists with
// the specified id.
///////////////////////////////////////
magnolia.getFabricById = async (id) => {
  let fabric;

  try {
    const request = new GetFabricByIDRequest();
    request.setFabricId(id);
    fabric = await magnolia.client.getFabricById(request, {});
  } catch (err) {
    return createReturnObj(null, `Failed to request fabric by id\n ${err}`);
  }

  return createReturnObj(fabric, null);
};

///////////////////////////////////////
// Returns fabrics if any exists with
// the specified name.
///////////////////////////////////////
magnolia.getFabricByName = async (name) => {
  let fabric;

  try {
    const request = new GetFabricByNameRequest();
    request.setFabricName(name);
    fabric = await magnolia.client.getFabricByName(request, {});
  } catch (err) {
    return createReturnObj(null, `Failed to request fabric by name\n ${err}`);
  }

  return createReturnObj(fabric, null);
};

window.magnolia = magnolia;
