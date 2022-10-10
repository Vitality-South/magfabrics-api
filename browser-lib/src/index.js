import createReturnObj from "./createReturnObj.js";
import {
  MagnoliaFabricsServicePromiseClient,
  GetAllFabricsRequest,
  GetAllFabricsWithoutInventoryRequest,
  GetAllFabricTaxonomiesRequest
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

magnolia.getAllInventory = async () => {};
magnolia.getCleaningCodes = async () => {};
magnolia.getFabricById = async () => {};
magnolia.getFabricByName = async () => {};

window.magnolia = magnolia;
