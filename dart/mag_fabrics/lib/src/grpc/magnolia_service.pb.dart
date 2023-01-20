///
//  Generated code. Do not modify.
//  source: magnolia_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'api_fabric.pb.dart' as $1;
import 'api_inventory.pb.dart' as $2;
import 'api_taxonomy.pb.dart' as $3;
import 'cleaning_code.pb.dart' as $4;
import 'api_discontinued_fabric.pb.dart' as $5;

class GetAllFabricsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllFabricsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetAllFabricsRequest._() : super();
  factory GetAllFabricsRequest() => create();
  factory GetAllFabricsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllFabricsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllFabricsRequest clone() => GetAllFabricsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllFabricsRequest copyWith(void Function(GetAllFabricsRequest) updates) => super.copyWith((message) => updates(message as GetAllFabricsRequest)) as GetAllFabricsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllFabricsRequest create() => GetAllFabricsRequest._();
  GetAllFabricsRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllFabricsRequest> createRepeated() => $pb.PbList<GetAllFabricsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllFabricsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllFabricsRequest>(create);
  static GetAllFabricsRequest? _defaultInstance;
}

class GetAllFabricsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllFabricsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..pc<$1.Fabric>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fabrics', $pb.PbFieldType.PM, subBuilder: $1.Fabric.create)
    ..hasRequiredFields = false
  ;

  GetAllFabricsResponse._() : super();
  factory GetAllFabricsResponse({
    $core.Iterable<$1.Fabric>? fabrics,
  }) {
    final _result = create();
    if (fabrics != null) {
      _result.fabrics.addAll(fabrics);
    }
    return _result;
  }
  factory GetAllFabricsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllFabricsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllFabricsResponse clone() => GetAllFabricsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllFabricsResponse copyWith(void Function(GetAllFabricsResponse) updates) => super.copyWith((message) => updates(message as GetAllFabricsResponse)) as GetAllFabricsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllFabricsResponse create() => GetAllFabricsResponse._();
  GetAllFabricsResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllFabricsResponse> createRepeated() => $pb.PbList<GetAllFabricsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllFabricsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllFabricsResponse>(create);
  static GetAllFabricsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.Fabric> get fabrics => $_getList(0);
}

class GetAllFabricsWithoutInventoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllFabricsWithoutInventoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetAllFabricsWithoutInventoryRequest._() : super();
  factory GetAllFabricsWithoutInventoryRequest() => create();
  factory GetAllFabricsWithoutInventoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllFabricsWithoutInventoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllFabricsWithoutInventoryRequest clone() => GetAllFabricsWithoutInventoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllFabricsWithoutInventoryRequest copyWith(void Function(GetAllFabricsWithoutInventoryRequest) updates) => super.copyWith((message) => updates(message as GetAllFabricsWithoutInventoryRequest)) as GetAllFabricsWithoutInventoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllFabricsWithoutInventoryRequest create() => GetAllFabricsWithoutInventoryRequest._();
  GetAllFabricsWithoutInventoryRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllFabricsWithoutInventoryRequest> createRepeated() => $pb.PbList<GetAllFabricsWithoutInventoryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllFabricsWithoutInventoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllFabricsWithoutInventoryRequest>(create);
  static GetAllFabricsWithoutInventoryRequest? _defaultInstance;
}

class GetAllFabricsWithoutInventoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllFabricsWithoutInventoryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..pc<$1.Fabric>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fabrics', $pb.PbFieldType.PM, subBuilder: $1.Fabric.create)
    ..hasRequiredFields = false
  ;

  GetAllFabricsWithoutInventoryResponse._() : super();
  factory GetAllFabricsWithoutInventoryResponse({
    $core.Iterable<$1.Fabric>? fabrics,
  }) {
    final _result = create();
    if (fabrics != null) {
      _result.fabrics.addAll(fabrics);
    }
    return _result;
  }
  factory GetAllFabricsWithoutInventoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllFabricsWithoutInventoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllFabricsWithoutInventoryResponse clone() => GetAllFabricsWithoutInventoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllFabricsWithoutInventoryResponse copyWith(void Function(GetAllFabricsWithoutInventoryResponse) updates) => super.copyWith((message) => updates(message as GetAllFabricsWithoutInventoryResponse)) as GetAllFabricsWithoutInventoryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllFabricsWithoutInventoryResponse create() => GetAllFabricsWithoutInventoryResponse._();
  GetAllFabricsWithoutInventoryResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllFabricsWithoutInventoryResponse> createRepeated() => $pb.PbList<GetAllFabricsWithoutInventoryResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllFabricsWithoutInventoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllFabricsWithoutInventoryResponse>(create);
  static GetAllFabricsWithoutInventoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.Fabric> get fabrics => $_getList(0);
}

class GetAllInventoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllInventoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetAllInventoryRequest._() : super();
  factory GetAllInventoryRequest() => create();
  factory GetAllInventoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllInventoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllInventoryRequest clone() => GetAllInventoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllInventoryRequest copyWith(void Function(GetAllInventoryRequest) updates) => super.copyWith((message) => updates(message as GetAllInventoryRequest)) as GetAllInventoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllInventoryRequest create() => GetAllInventoryRequest._();
  GetAllInventoryRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllInventoryRequest> createRepeated() => $pb.PbList<GetAllInventoryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllInventoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllInventoryRequest>(create);
  static GetAllInventoryRequest? _defaultInstance;
}

class GetAllInventoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllInventoryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..pc<$2.Inventory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inventory', $pb.PbFieldType.PM, subBuilder: $2.Inventory.create)
    ..hasRequiredFields = false
  ;

  GetAllInventoryResponse._() : super();
  factory GetAllInventoryResponse({
    $core.Iterable<$2.Inventory>? inventory,
  }) {
    final _result = create();
    if (inventory != null) {
      _result.inventory.addAll(inventory);
    }
    return _result;
  }
  factory GetAllInventoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllInventoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllInventoryResponse clone() => GetAllInventoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllInventoryResponse copyWith(void Function(GetAllInventoryResponse) updates) => super.copyWith((message) => updates(message as GetAllInventoryResponse)) as GetAllInventoryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllInventoryResponse create() => GetAllInventoryResponse._();
  GetAllInventoryResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllInventoryResponse> createRepeated() => $pb.PbList<GetAllInventoryResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllInventoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllInventoryResponse>(create);
  static GetAllInventoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.Inventory> get inventory => $_getList(0);
}

class GetFabricByIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFabricByIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fabricId')
    ..hasRequiredFields = false
  ;

  GetFabricByIDRequest._() : super();
  factory GetFabricByIDRequest({
    $core.String? fabricId,
  }) {
    final _result = create();
    if (fabricId != null) {
      _result.fabricId = fabricId;
    }
    return _result;
  }
  factory GetFabricByIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFabricByIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFabricByIDRequest clone() => GetFabricByIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFabricByIDRequest copyWith(void Function(GetFabricByIDRequest) updates) => super.copyWith((message) => updates(message as GetFabricByIDRequest)) as GetFabricByIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFabricByIDRequest create() => GetFabricByIDRequest._();
  GetFabricByIDRequest createEmptyInstance() => create();
  static $pb.PbList<GetFabricByIDRequest> createRepeated() => $pb.PbList<GetFabricByIDRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFabricByIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFabricByIDRequest>(create);
  static GetFabricByIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fabricId => $_getSZ(0);
  @$pb.TagNumber(1)
  set fabricId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFabricId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFabricId() => clearField(1);
}

class GetFabricByIDResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFabricByIDResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..aOM<$1.Fabric>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fabric', subBuilder: $1.Fabric.create)
    ..hasRequiredFields = false
  ;

  GetFabricByIDResponse._() : super();
  factory GetFabricByIDResponse({
    $1.Fabric? fabric,
  }) {
    final _result = create();
    if (fabric != null) {
      _result.fabric = fabric;
    }
    return _result;
  }
  factory GetFabricByIDResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFabricByIDResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFabricByIDResponse clone() => GetFabricByIDResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFabricByIDResponse copyWith(void Function(GetFabricByIDResponse) updates) => super.copyWith((message) => updates(message as GetFabricByIDResponse)) as GetFabricByIDResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFabricByIDResponse create() => GetFabricByIDResponse._();
  GetFabricByIDResponse createEmptyInstance() => create();
  static $pb.PbList<GetFabricByIDResponse> createRepeated() => $pb.PbList<GetFabricByIDResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFabricByIDResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFabricByIDResponse>(create);
  static GetFabricByIDResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Fabric get fabric => $_getN(0);
  @$pb.TagNumber(1)
  set fabric($1.Fabric v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFabric() => $_has(0);
  @$pb.TagNumber(1)
  void clearFabric() => clearField(1);
  @$pb.TagNumber(1)
  $1.Fabric ensureFabric() => $_ensure(0);
}

class GetFabricByNameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFabricByNameRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fabricName')
    ..hasRequiredFields = false
  ;

  GetFabricByNameRequest._() : super();
  factory GetFabricByNameRequest({
    $core.String? fabricName,
  }) {
    final _result = create();
    if (fabricName != null) {
      _result.fabricName = fabricName;
    }
    return _result;
  }
  factory GetFabricByNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFabricByNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFabricByNameRequest clone() => GetFabricByNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFabricByNameRequest copyWith(void Function(GetFabricByNameRequest) updates) => super.copyWith((message) => updates(message as GetFabricByNameRequest)) as GetFabricByNameRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFabricByNameRequest create() => GetFabricByNameRequest._();
  GetFabricByNameRequest createEmptyInstance() => create();
  static $pb.PbList<GetFabricByNameRequest> createRepeated() => $pb.PbList<GetFabricByNameRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFabricByNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFabricByNameRequest>(create);
  static GetFabricByNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fabricName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fabricName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFabricName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFabricName() => clearField(1);
}

class GetFabricByNameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFabricByNameResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..aOM<$1.Fabric>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fabric', subBuilder: $1.Fabric.create)
    ..hasRequiredFields = false
  ;

  GetFabricByNameResponse._() : super();
  factory GetFabricByNameResponse({
    $1.Fabric? fabric,
  }) {
    final _result = create();
    if (fabric != null) {
      _result.fabric = fabric;
    }
    return _result;
  }
  factory GetFabricByNameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFabricByNameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFabricByNameResponse clone() => GetFabricByNameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFabricByNameResponse copyWith(void Function(GetFabricByNameResponse) updates) => super.copyWith((message) => updates(message as GetFabricByNameResponse)) as GetFabricByNameResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFabricByNameResponse create() => GetFabricByNameResponse._();
  GetFabricByNameResponse createEmptyInstance() => create();
  static $pb.PbList<GetFabricByNameResponse> createRepeated() => $pb.PbList<GetFabricByNameResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFabricByNameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFabricByNameResponse>(create);
  static GetFabricByNameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Fabric get fabric => $_getN(0);
  @$pb.TagNumber(1)
  set fabric($1.Fabric v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFabric() => $_has(0);
  @$pb.TagNumber(1)
  void clearFabric() => clearField(1);
  @$pb.TagNumber(1)
  $1.Fabric ensureFabric() => $_ensure(0);
}

class GetAllFabricTaxonomyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllFabricTaxonomyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetAllFabricTaxonomyRequest._() : super();
  factory GetAllFabricTaxonomyRequest() => create();
  factory GetAllFabricTaxonomyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllFabricTaxonomyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllFabricTaxonomyRequest clone() => GetAllFabricTaxonomyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllFabricTaxonomyRequest copyWith(void Function(GetAllFabricTaxonomyRequest) updates) => super.copyWith((message) => updates(message as GetAllFabricTaxonomyRequest)) as GetAllFabricTaxonomyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllFabricTaxonomyRequest create() => GetAllFabricTaxonomyRequest._();
  GetAllFabricTaxonomyRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllFabricTaxonomyRequest> createRepeated() => $pb.PbList<GetAllFabricTaxonomyRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllFabricTaxonomyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllFabricTaxonomyRequest>(create);
  static GetAllFabricTaxonomyRequest? _defaultInstance;
}

class GetAllFabricTaxonomyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllFabricTaxonomyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..aOM<$3.Taxonomy>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taxonomy', subBuilder: $3.Taxonomy.create)
    ..hasRequiredFields = false
  ;

  GetAllFabricTaxonomyResponse._() : super();
  factory GetAllFabricTaxonomyResponse({
    $3.Taxonomy? taxonomy,
  }) {
    final _result = create();
    if (taxonomy != null) {
      _result.taxonomy = taxonomy;
    }
    return _result;
  }
  factory GetAllFabricTaxonomyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllFabricTaxonomyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllFabricTaxonomyResponse clone() => GetAllFabricTaxonomyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllFabricTaxonomyResponse copyWith(void Function(GetAllFabricTaxonomyResponse) updates) => super.copyWith((message) => updates(message as GetAllFabricTaxonomyResponse)) as GetAllFabricTaxonomyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllFabricTaxonomyResponse create() => GetAllFabricTaxonomyResponse._();
  GetAllFabricTaxonomyResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllFabricTaxonomyResponse> createRepeated() => $pb.PbList<GetAllFabricTaxonomyResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllFabricTaxonomyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllFabricTaxonomyResponse>(create);
  static GetAllFabricTaxonomyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Taxonomy get taxonomy => $_getN(0);
  @$pb.TagNumber(1)
  set taxonomy($3.Taxonomy v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaxonomy() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaxonomy() => clearField(1);
  @$pb.TagNumber(1)
  $3.Taxonomy ensureTaxonomy() => $_ensure(0);
}

class GetCleaningCodesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCleaningCodesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetCleaningCodesRequest._() : super();
  factory GetCleaningCodesRequest() => create();
  factory GetCleaningCodesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCleaningCodesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCleaningCodesRequest clone() => GetCleaningCodesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCleaningCodesRequest copyWith(void Function(GetCleaningCodesRequest) updates) => super.copyWith((message) => updates(message as GetCleaningCodesRequest)) as GetCleaningCodesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCleaningCodesRequest create() => GetCleaningCodesRequest._();
  GetCleaningCodesRequest createEmptyInstance() => create();
  static $pb.PbList<GetCleaningCodesRequest> createRepeated() => $pb.PbList<GetCleaningCodesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCleaningCodesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCleaningCodesRequest>(create);
  static GetCleaningCodesRequest? _defaultInstance;
}

class GetCleaningCodesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCleaningCodesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..m<$core.String, $4.CleaningCode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cleaningCodes', entryClassName: 'GetCleaningCodesResponse.CleaningCodesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $4.CleaningCode.create, packageName: const $pb.PackageName('magnoliafabrics'))
    ..hasRequiredFields = false
  ;

  GetCleaningCodesResponse._() : super();
  factory GetCleaningCodesResponse({
    $core.Map<$core.String, $4.CleaningCode>? cleaningCodes,
  }) {
    final _result = create();
    if (cleaningCodes != null) {
      _result.cleaningCodes.addAll(cleaningCodes);
    }
    return _result;
  }
  factory GetCleaningCodesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCleaningCodesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCleaningCodesResponse clone() => GetCleaningCodesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCleaningCodesResponse copyWith(void Function(GetCleaningCodesResponse) updates) => super.copyWith((message) => updates(message as GetCleaningCodesResponse)) as GetCleaningCodesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCleaningCodesResponse create() => GetCleaningCodesResponse._();
  GetCleaningCodesResponse createEmptyInstance() => create();
  static $pb.PbList<GetCleaningCodesResponse> createRepeated() => $pb.PbList<GetCleaningCodesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCleaningCodesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCleaningCodesResponse>(create);
  static GetCleaningCodesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $4.CleaningCode> get cleaningCodes => $_getMap(0);
}

class GetFabricBySKURequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFabricBySKURequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fabricSku')
    ..hasRequiredFields = false
  ;

  GetFabricBySKURequest._() : super();
  factory GetFabricBySKURequest({
    $core.String? fabricSku,
  }) {
    final _result = create();
    if (fabricSku != null) {
      _result.fabricSku = fabricSku;
    }
    return _result;
  }
  factory GetFabricBySKURequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFabricBySKURequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFabricBySKURequest clone() => GetFabricBySKURequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFabricBySKURequest copyWith(void Function(GetFabricBySKURequest) updates) => super.copyWith((message) => updates(message as GetFabricBySKURequest)) as GetFabricBySKURequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFabricBySKURequest create() => GetFabricBySKURequest._();
  GetFabricBySKURequest createEmptyInstance() => create();
  static $pb.PbList<GetFabricBySKURequest> createRepeated() => $pb.PbList<GetFabricBySKURequest>();
  @$core.pragma('dart2js:noInline')
  static GetFabricBySKURequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFabricBySKURequest>(create);
  static GetFabricBySKURequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fabricSku => $_getSZ(0);
  @$pb.TagNumber(1)
  set fabricSku($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFabricSku() => $_has(0);
  @$pb.TagNumber(1)
  void clearFabricSku() => clearField(1);
}

class GetFabricBySKUResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFabricBySKUResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..aOM<$1.Fabric>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fabric', subBuilder: $1.Fabric.create)
    ..hasRequiredFields = false
  ;

  GetFabricBySKUResponse._() : super();
  factory GetFabricBySKUResponse({
    $1.Fabric? fabric,
  }) {
    final _result = create();
    if (fabric != null) {
      _result.fabric = fabric;
    }
    return _result;
  }
  factory GetFabricBySKUResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFabricBySKUResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFabricBySKUResponse clone() => GetFabricBySKUResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFabricBySKUResponse copyWith(void Function(GetFabricBySKUResponse) updates) => super.copyWith((message) => updates(message as GetFabricBySKUResponse)) as GetFabricBySKUResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFabricBySKUResponse create() => GetFabricBySKUResponse._();
  GetFabricBySKUResponse createEmptyInstance() => create();
  static $pb.PbList<GetFabricBySKUResponse> createRepeated() => $pb.PbList<GetFabricBySKUResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFabricBySKUResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFabricBySKUResponse>(create);
  static GetFabricBySKUResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Fabric get fabric => $_getN(0);
  @$pb.TagNumber(1)
  set fabric($1.Fabric v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFabric() => $_has(0);
  @$pb.TagNumber(1)
  void clearFabric() => clearField(1);
  @$pb.TagNumber(1)
  $1.Fabric ensureFabric() => $_ensure(0);
}

class GetDiscontinuedFabricsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDiscontinuedFabricsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetDiscontinuedFabricsRequest._() : super();
  factory GetDiscontinuedFabricsRequest() => create();
  factory GetDiscontinuedFabricsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDiscontinuedFabricsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDiscontinuedFabricsRequest clone() => GetDiscontinuedFabricsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDiscontinuedFabricsRequest copyWith(void Function(GetDiscontinuedFabricsRequest) updates) => super.copyWith((message) => updates(message as GetDiscontinuedFabricsRequest)) as GetDiscontinuedFabricsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDiscontinuedFabricsRequest create() => GetDiscontinuedFabricsRequest._();
  GetDiscontinuedFabricsRequest createEmptyInstance() => create();
  static $pb.PbList<GetDiscontinuedFabricsRequest> createRepeated() => $pb.PbList<GetDiscontinuedFabricsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDiscontinuedFabricsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDiscontinuedFabricsRequest>(create);
  static GetDiscontinuedFabricsRequest? _defaultInstance;
}

class GetDiscontinuedFabricsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDiscontinuedFabricsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..pc<$5.DiscontinuedFabric>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fabrics', $pb.PbFieldType.PM, subBuilder: $5.DiscontinuedFabric.create)
    ..hasRequiredFields = false
  ;

  GetDiscontinuedFabricsResponse._() : super();
  factory GetDiscontinuedFabricsResponse({
    $core.Iterable<$5.DiscontinuedFabric>? fabrics,
  }) {
    final _result = create();
    if (fabrics != null) {
      _result.fabrics.addAll(fabrics);
    }
    return _result;
  }
  factory GetDiscontinuedFabricsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDiscontinuedFabricsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDiscontinuedFabricsResponse clone() => GetDiscontinuedFabricsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDiscontinuedFabricsResponse copyWith(void Function(GetDiscontinuedFabricsResponse) updates) => super.copyWith((message) => updates(message as GetDiscontinuedFabricsResponse)) as GetDiscontinuedFabricsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDiscontinuedFabricsResponse create() => GetDiscontinuedFabricsResponse._();
  GetDiscontinuedFabricsResponse createEmptyInstance() => create();
  static $pb.PbList<GetDiscontinuedFabricsResponse> createRepeated() => $pb.PbList<GetDiscontinuedFabricsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDiscontinuedFabricsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDiscontinuedFabricsResponse>(create);
  static GetDiscontinuedFabricsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$5.DiscontinuedFabric> get fabrics => $_getList(0);
}

