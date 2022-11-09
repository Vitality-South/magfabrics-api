import 'package:grpc/grpc.dart';
import 'package:mag_fabrics/src/api_response.dart';
import 'package:mag_fabrics/src/grpc/api_fabric.pb.dart';
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
  static String api_key = 'YOUR_API_KEY';

  ClientChannel? client;
  MagnoliaFabricsServiceClient? service;
  String grpcHost = "https://api.magfabrics.com";
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

    api_key = apiKey;
  }

  Future<APIResponse<List<Fabric>>> getFabrics() async {
    try {
      final request = GetAllFabricsRequest();
      final fabrics = await service!.getAllFabrics(request,
          options: CallOptions(metadata: {'api-key': api_key}));

      return APIResponse<List<Fabric>>(data: fabrics.fabrics);
    } on GrpcError catch (e) {
      print('ERROR: $e');
      print('failed to get fabrics');
      return APIResponse<List<Fabric>>(error: e.message.toString(), data: []);
    }
  }
}
