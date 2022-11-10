import 'package:grpc/grpc.dart';
import 'package:mag_fabrics/src/api_response.dart';
import 'package:mag_fabrics/src/grpc/api_fabric.pb.dart';
import 'package:mag_fabrics/src/grpc/api_inventory.pb.dart';
import 'package:mag_fabrics/src/grpc/api_taxonomy.pb.dart';
import 'package:mag_fabrics/src/grpc/cleaning_code.pb.dart';
import 'package:mag_fabrics/src/grpc/magnolia_service.pbgrpc.dart';

class MagFabrics {
  /// singleton private constructor
  MagFabrics._privateConstructor() {
    try {
      service = MagnoliaFabricsServiceClient(getClient());
    } on GrpcError catch (e) {
      print('ERROR: $e');
      print('failed to create gRPC client');
    }
  }
  static final MagFabrics instance = MagFabrics._privateConstructor();
  String _apiKey = '';

  ClientChannel? client;
  MagnoliaFabricsServiceClient? service;
  String grpcHost = "grpc.magfabrics.com";
  int grpcPort = 443;

  // creates the client channel with tls enabled
  ClientChannel getClient() {
    client ??= ClientChannel(
      grpcHost,
      port: grpcPort,
      options: const ChannelOptions(
          credentials: ChannelCredentials.secure(),
          idleTimeout: Duration(seconds: 60)),
    );

    return client!;
  }

  void dispose() {
    client?.shutdown();
  }

  void initialize(String apiKey) {
    if (apiKey.isEmpty) {
      throw Exception("Can't pass an empty api key");
    }

    _apiKey = apiKey;
  }

  Future<APIResponse<List<Fabric>>> getAllFabrics() async {
    try {
      final request = GetAllFabricsRequest();
      final fabrics = await service!.getAllFabrics(request,
          options: CallOptions(metadata: {'x-api-key': _apiKey}));

      return APIResponse<List<Fabric>>(data: fabrics.fabrics);
    } on GrpcError catch (e) {
      print('ERROR: $e');
      print('failed to get fabrics');
      return APIResponse<List<Fabric>>(error: e.message.toString(), data: []);
    }
  }

  Future<APIResponse<List<Fabric>>> getAllFabricsWithoutInventory() async {
    try {
      final request = GetAllFabricsWithoutInventoryRequest();
      final fabrics = await service!.getAllFabricsWithoutInventory(request,
          options: CallOptions(metadata: {'x-api-key': _apiKey}));

      return APIResponse<List<Fabric>>(data: fabrics.fabrics);
    } on GrpcError catch (e) {
      print('ERROR: $e');
      print('failed to get fabrics');
      return APIResponse<List<Fabric>>(error: e.message.toString(), data: []);
    }
  }

  Future<APIResponse<Taxonomy>> getAllTaxonomies() async {
    try {
      final request = GetAllFabricTaxonomyRequest();
      final taxonomies = await service!.getAllFabricTaxonomy(request,
          options: CallOptions(metadata: {'x-api-key': _apiKey}));

      return APIResponse<Taxonomy>(data: taxonomies.taxonomy);
    } on GrpcError catch (e) {
      print('ERROR: $e');
      print('failed to get taxonomies');
      return APIResponse<Taxonomy>(
          error: e.message.toString(), data: Taxonomy());
    }
  }

  Future<APIResponse<List<Inventory>>> getAllInventory() async {
    try {
      final request = GetAllInventoryRequest();
      final inventory = await service!.getAllInventory(request,
          options: CallOptions(metadata: {'x-api-key': _apiKey}));

      return APIResponse<List<Inventory>>(data: inventory.inventory);
    } on GrpcError catch (e) {
      print('ERROR: $e');
      print('failed to get inventory');
      return APIResponse<List<Inventory>>(
          error: e.message.toString(), data: []);
    }
  }

  Future<APIResponse<Map<String, CleaningCode>>> getCleaningCodes() async {
    try {
      final request = GetCleaningCodesRequest();
      final codes = await service!.getCleaningCodes(request,
          options: CallOptions(metadata: {'x-api-key': _apiKey}));

      return APIResponse<Map<String, CleaningCode>>(data: codes.cleaningCodes);
    } on GrpcError catch (e) {
      print('ERROR: $e');
      print('failed to get cleaning codes');
      return APIResponse<Map<String, CleaningCode>>(
          error: e.message.toString(), data: {});
    }
  }

  Future<APIResponse<Fabric>> getFabricById(String id) async {
    try {
      final request = GetFabricByIDRequest(fabricId: id);
      final fabric = await service!.getFabricByID(request,
          options: CallOptions(metadata: {'x-api-key': _apiKey}));

      return APIResponse<Fabric>(data: fabric.fabric);
    } on GrpcError catch (e) {
      print('ERROR: $e');
      print('failed to get fabric by id');
      return APIResponse<Fabric>(error: e.message.toString(), data: Fabric());
    }
  }

  Future<APIResponse<Fabric>> getFabricByName(String id) async {
    try {
      final request = GetFabricByNameRequest(fabricName: id);
      final fabric = await service!.getFabricByName(request,
          options: CallOptions(metadata: {'x-api-key': _apiKey}));

      return APIResponse<Fabric>(data: fabric.fabric);
    } on GrpcError catch (e) {
      print('ERROR: $e');
      print('failed to get fabric by name');
      return APIResponse<Fabric>(error: e.message.toString(), data: Fabric());
    }
  }
}
