///
//  Generated code. Do not modify.
//  source: magnolia_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'magnolia_service.pb.dart' as $0;
export 'magnolia_service.pb.dart';

class MagnoliaFabricsServiceClient extends $grpc.Client {
  static final _$getAllFabrics =
      $grpc.ClientMethod<$0.GetAllFabricsRequest, $0.GetAllFabricsResponse>(
          '/magnoliafabrics.MagnoliaFabricsService/GetAllFabrics',
          ($0.GetAllFabricsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetAllFabricsResponse.fromBuffer(value));
  static final _$getAllFabricsWithoutInventory = $grpc.ClientMethod<
          $0.GetAllFabricsWithoutInventoryRequest,
          $0.GetAllFabricsWithoutInventoryResponse>(
      '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricsWithoutInventory',
      ($0.GetAllFabricsWithoutInventoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetAllFabricsWithoutInventoryResponse.fromBuffer(value));
  static final _$getAllInventory =
      $grpc.ClientMethod<$0.GetAllInventoryRequest, $0.GetAllInventoryResponse>(
          '/magnoliafabrics.MagnoliaFabricsService/GetAllInventory',
          ($0.GetAllInventoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetAllInventoryResponse.fromBuffer(value));
  static final _$getFabricByID =
      $grpc.ClientMethod<$0.GetFabricByIDRequest, $0.GetFabricByIDResponse>(
          '/magnoliafabrics.MagnoliaFabricsService/GetFabricByID',
          ($0.GetFabricByIDRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetFabricByIDResponse.fromBuffer(value));
  static final _$getFabricByName =
      $grpc.ClientMethod<$0.GetFabricByNameRequest, $0.GetFabricByNameResponse>(
          '/magnoliafabrics.MagnoliaFabricsService/GetFabricByName',
          ($0.GetFabricByNameRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetFabricByNameResponse.fromBuffer(value));
  static final _$getFabricBySKU =
      $grpc.ClientMethod<$0.GetFabricBySKURequest, $0.GetFabricBySKUResponse>(
          '/magnoliafabrics.MagnoliaFabricsService/GetFabricBySKU',
          ($0.GetFabricBySKURequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetFabricBySKUResponse.fromBuffer(value));
  static final _$getAllFabricTaxonomy = $grpc.ClientMethod<
          $0.GetAllFabricTaxonomyRequest, $0.GetAllFabricTaxonomyResponse>(
      '/magnoliafabrics.MagnoliaFabricsService/GetAllFabricTaxonomy',
      ($0.GetAllFabricTaxonomyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetAllFabricTaxonomyResponse.fromBuffer(value));
  static final _$getCleaningCodes = $grpc.ClientMethod<
          $0.GetCleaningCodesRequest, $0.GetCleaningCodesResponse>(
      '/magnoliafabrics.MagnoliaFabricsService/GetCleaningCodes',
      ($0.GetCleaningCodesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetCleaningCodesResponse.fromBuffer(value));

  MagnoliaFabricsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetAllFabricsResponse> getAllFabrics(
      $0.GetAllFabricsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllFabrics, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAllFabricsWithoutInventoryResponse>
      getAllFabricsWithoutInventory(
          $0.GetAllFabricsWithoutInventoryRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllFabricsWithoutInventory, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.GetAllInventoryResponse> getAllInventory(
      $0.GetAllInventoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllInventory, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetFabricByIDResponse> getFabricByID(
      $0.GetFabricByIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFabricByID, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetFabricByNameResponse> getFabricByName(
      $0.GetFabricByNameRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFabricByName, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetFabricBySKUResponse> getFabricBySKU(
      $0.GetFabricBySKURequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFabricBySKU, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAllFabricTaxonomyResponse> getAllFabricTaxonomy(
      $0.GetAllFabricTaxonomyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllFabricTaxonomy, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCleaningCodesResponse> getCleaningCodes(
      $0.GetCleaningCodesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCleaningCodes, request, options: options);
  }
}

abstract class MagnoliaFabricsServiceBase extends $grpc.Service {
  $core.String get $name => 'magnoliafabrics.MagnoliaFabricsService';

  MagnoliaFabricsServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.GetAllFabricsRequest, $0.GetAllFabricsResponse>(
            'GetAllFabrics',
            getAllFabrics_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetAllFabricsRequest.fromBuffer(value),
            ($0.GetAllFabricsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAllFabricsWithoutInventoryRequest,
            $0.GetAllFabricsWithoutInventoryResponse>(
        'GetAllFabricsWithoutInventory',
        getAllFabricsWithoutInventory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetAllFabricsWithoutInventoryRequest.fromBuffer(value),
        ($0.GetAllFabricsWithoutInventoryResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAllInventoryRequest,
            $0.GetAllInventoryResponse>(
        'GetAllInventory',
        getAllInventory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetAllInventoryRequest.fromBuffer(value),
        ($0.GetAllInventoryResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetFabricByIDRequest, $0.GetFabricByIDResponse>(
            'GetFabricByID',
            getFabricByID_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetFabricByIDRequest.fromBuffer(value),
            ($0.GetFabricByIDResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetFabricByNameRequest,
            $0.GetFabricByNameResponse>(
        'GetFabricByName',
        getFabricByName_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetFabricByNameRequest.fromBuffer(value),
        ($0.GetFabricByNameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetFabricBySKURequest,
            $0.GetFabricBySKUResponse>(
        'GetFabricBySKU',
        getFabricBySKU_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetFabricBySKURequest.fromBuffer(value),
        ($0.GetFabricBySKUResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAllFabricTaxonomyRequest,
            $0.GetAllFabricTaxonomyResponse>(
        'GetAllFabricTaxonomy',
        getAllFabricTaxonomy_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetAllFabricTaxonomyRequest.fromBuffer(value),
        ($0.GetAllFabricTaxonomyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCleaningCodesRequest,
            $0.GetCleaningCodesResponse>(
        'GetCleaningCodes',
        getCleaningCodes_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetCleaningCodesRequest.fromBuffer(value),
        ($0.GetCleaningCodesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetAllFabricsResponse> getAllFabrics_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAllFabricsRequest> request) async {
    return getAllFabrics(call, await request);
  }

  $async.Future<$0.GetAllFabricsWithoutInventoryResponse>
      getAllFabricsWithoutInventory_Pre(
          $grpc.ServiceCall call,
          $async.Future<$0.GetAllFabricsWithoutInventoryRequest>
              request) async {
    return getAllFabricsWithoutInventory(call, await request);
  }

  $async.Future<$0.GetAllInventoryResponse> getAllInventory_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAllInventoryRequest> request) async {
    return getAllInventory(call, await request);
  }

  $async.Future<$0.GetFabricByIDResponse> getFabricByID_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetFabricByIDRequest> request) async {
    return getFabricByID(call, await request);
  }

  $async.Future<$0.GetFabricByNameResponse> getFabricByName_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetFabricByNameRequest> request) async {
    return getFabricByName(call, await request);
  }

  $async.Future<$0.GetFabricBySKUResponse> getFabricBySKU_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetFabricBySKURequest> request) async {
    return getFabricBySKU(call, await request);
  }

  $async.Future<$0.GetAllFabricTaxonomyResponse> getAllFabricTaxonomy_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAllFabricTaxonomyRequest> request) async {
    return getAllFabricTaxonomy(call, await request);
  }

  $async.Future<$0.GetCleaningCodesResponse> getCleaningCodes_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetCleaningCodesRequest> request) async {
    return getCleaningCodes(call, await request);
  }

  $async.Future<$0.GetAllFabricsResponse> getAllFabrics(
      $grpc.ServiceCall call, $0.GetAllFabricsRequest request);
  $async.Future<$0.GetAllFabricsWithoutInventoryResponse>
      getAllFabricsWithoutInventory($grpc.ServiceCall call,
          $0.GetAllFabricsWithoutInventoryRequest request);
  $async.Future<$0.GetAllInventoryResponse> getAllInventory(
      $grpc.ServiceCall call, $0.GetAllInventoryRequest request);
  $async.Future<$0.GetFabricByIDResponse> getFabricByID(
      $grpc.ServiceCall call, $0.GetFabricByIDRequest request);
  $async.Future<$0.GetFabricByNameResponse> getFabricByName(
      $grpc.ServiceCall call, $0.GetFabricByNameRequest request);
  $async.Future<$0.GetFabricBySKUResponse> getFabricBySKU(
      $grpc.ServiceCall call, $0.GetFabricBySKURequest request);
  $async.Future<$0.GetAllFabricTaxonomyResponse> getAllFabricTaxonomy(
      $grpc.ServiceCall call, $0.GetAllFabricTaxonomyRequest request);
  $async.Future<$0.GetCleaningCodesResponse> getCleaningCodes(
      $grpc.ServiceCall call, $0.GetCleaningCodesRequest request);
}
