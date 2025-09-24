// This is a generated file - do not edit.
//
// Generated from magnolia_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'api_discontinued_fabric.pb.dart' as $5;
import 'api_fabric.pb.dart' as $1;
import 'api_inventory.pb.dart' as $2;
import 'api_taxonomy.pb.dart' as $3;
import 'cleaning_code.pb.dart' as $4;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetAllFabricsRequest extends $pb.GeneratedMessage {
  factory GetAllFabricsRequest() => create();

  GetAllFabricsRequest._();

  factory GetAllFabricsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAllFabricsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAllFabricsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllFabricsRequest clone() =>
      GetAllFabricsRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllFabricsRequest copyWith(void Function(GetAllFabricsRequest) updates) =>
      super.copyWith((message) => updates(message as GetAllFabricsRequest))
          as GetAllFabricsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllFabricsRequest create() => GetAllFabricsRequest._();
  @$core.override
  GetAllFabricsRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllFabricsRequest> createRepeated() =>
      $pb.PbList<GetAllFabricsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllFabricsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAllFabricsRequest>(create);
  static GetAllFabricsRequest? _defaultInstance;
}

class GetAllFabricsResponse extends $pb.GeneratedMessage {
  factory GetAllFabricsResponse({
    $core.Iterable<$1.Fabric>? fabrics,
  }) {
    final result = create();
    if (fabrics != null) result.fabrics.addAll(fabrics);
    return result;
  }

  GetAllFabricsResponse._();

  factory GetAllFabricsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAllFabricsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAllFabricsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..pc<$1.Fabric>(1, _omitFieldNames ? '' : 'fabrics', $pb.PbFieldType.PM,
        subBuilder: $1.Fabric.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllFabricsResponse clone() =>
      GetAllFabricsResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllFabricsResponse copyWith(
          void Function(GetAllFabricsResponse) updates) =>
      super.copyWith((message) => updates(message as GetAllFabricsResponse))
          as GetAllFabricsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllFabricsResponse create() => GetAllFabricsResponse._();
  @$core.override
  GetAllFabricsResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllFabricsResponse> createRepeated() =>
      $pb.PbList<GetAllFabricsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllFabricsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAllFabricsResponse>(create);
  static GetAllFabricsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Fabric> get fabrics => $_getList(0);
}

class GetAllFabricsWithoutInventoryRequest extends $pb.GeneratedMessage {
  factory GetAllFabricsWithoutInventoryRequest() => create();

  GetAllFabricsWithoutInventoryRequest._();

  factory GetAllFabricsWithoutInventoryRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAllFabricsWithoutInventoryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAllFabricsWithoutInventoryRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllFabricsWithoutInventoryRequest clone() =>
      GetAllFabricsWithoutInventoryRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllFabricsWithoutInventoryRequest copyWith(
          void Function(GetAllFabricsWithoutInventoryRequest) updates) =>
      super.copyWith((message) =>
              updates(message as GetAllFabricsWithoutInventoryRequest))
          as GetAllFabricsWithoutInventoryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllFabricsWithoutInventoryRequest create() =>
      GetAllFabricsWithoutInventoryRequest._();
  @$core.override
  GetAllFabricsWithoutInventoryRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllFabricsWithoutInventoryRequest> createRepeated() =>
      $pb.PbList<GetAllFabricsWithoutInventoryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllFabricsWithoutInventoryRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetAllFabricsWithoutInventoryRequest>(create);
  static GetAllFabricsWithoutInventoryRequest? _defaultInstance;
}

class GetAllFabricsWithoutInventoryResponse extends $pb.GeneratedMessage {
  factory GetAllFabricsWithoutInventoryResponse({
    $core.Iterable<$1.Fabric>? fabrics,
  }) {
    final result = create();
    if (fabrics != null) result.fabrics.addAll(fabrics);
    return result;
  }

  GetAllFabricsWithoutInventoryResponse._();

  factory GetAllFabricsWithoutInventoryResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAllFabricsWithoutInventoryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAllFabricsWithoutInventoryResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..pc<$1.Fabric>(1, _omitFieldNames ? '' : 'fabrics', $pb.PbFieldType.PM,
        subBuilder: $1.Fabric.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllFabricsWithoutInventoryResponse clone() =>
      GetAllFabricsWithoutInventoryResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllFabricsWithoutInventoryResponse copyWith(
          void Function(GetAllFabricsWithoutInventoryResponse) updates) =>
      super.copyWith((message) =>
              updates(message as GetAllFabricsWithoutInventoryResponse))
          as GetAllFabricsWithoutInventoryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllFabricsWithoutInventoryResponse create() =>
      GetAllFabricsWithoutInventoryResponse._();
  @$core.override
  GetAllFabricsWithoutInventoryResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllFabricsWithoutInventoryResponse> createRepeated() =>
      $pb.PbList<GetAllFabricsWithoutInventoryResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllFabricsWithoutInventoryResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GetAllFabricsWithoutInventoryResponse>(create);
  static GetAllFabricsWithoutInventoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Fabric> get fabrics => $_getList(0);
}

class GetAllInventoryRequest extends $pb.GeneratedMessage {
  factory GetAllInventoryRequest() => create();

  GetAllInventoryRequest._();

  factory GetAllInventoryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAllInventoryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAllInventoryRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllInventoryRequest clone() =>
      GetAllInventoryRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllInventoryRequest copyWith(
          void Function(GetAllInventoryRequest) updates) =>
      super.copyWith((message) => updates(message as GetAllInventoryRequest))
          as GetAllInventoryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllInventoryRequest create() => GetAllInventoryRequest._();
  @$core.override
  GetAllInventoryRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllInventoryRequest> createRepeated() =>
      $pb.PbList<GetAllInventoryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllInventoryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAllInventoryRequest>(create);
  static GetAllInventoryRequest? _defaultInstance;
}

class GetAllInventoryResponse extends $pb.GeneratedMessage {
  factory GetAllInventoryResponse({
    $core.Iterable<$2.Inventory>? inventory,
  }) {
    final result = create();
    if (inventory != null) result.inventory.addAll(inventory);
    return result;
  }

  GetAllInventoryResponse._();

  factory GetAllInventoryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAllInventoryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAllInventoryResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..pc<$2.Inventory>(
        1, _omitFieldNames ? '' : 'inventory', $pb.PbFieldType.PM,
        subBuilder: $2.Inventory.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllInventoryResponse clone() =>
      GetAllInventoryResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllInventoryResponse copyWith(
          void Function(GetAllInventoryResponse) updates) =>
      super.copyWith((message) => updates(message as GetAllInventoryResponse))
          as GetAllInventoryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllInventoryResponse create() => GetAllInventoryResponse._();
  @$core.override
  GetAllInventoryResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllInventoryResponse> createRepeated() =>
      $pb.PbList<GetAllInventoryResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllInventoryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAllInventoryResponse>(create);
  static GetAllInventoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.Inventory> get inventory => $_getList(0);
}

class GetFabricByIDRequest extends $pb.GeneratedMessage {
  factory GetFabricByIDRequest({
    $core.String? fabricId,
  }) {
    final result = create();
    if (fabricId != null) result.fabricId = fabricId;
    return result;
  }

  GetFabricByIDRequest._();

  factory GetFabricByIDRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFabricByIDRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFabricByIDRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fabricId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFabricByIDRequest clone() =>
      GetFabricByIDRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFabricByIDRequest copyWith(void Function(GetFabricByIDRequest) updates) =>
      super.copyWith((message) => updates(message as GetFabricByIDRequest))
          as GetFabricByIDRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFabricByIDRequest create() => GetFabricByIDRequest._();
  @$core.override
  GetFabricByIDRequest createEmptyInstance() => create();
  static $pb.PbList<GetFabricByIDRequest> createRepeated() =>
      $pb.PbList<GetFabricByIDRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFabricByIDRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFabricByIDRequest>(create);
  static GetFabricByIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fabricId => $_getSZ(0);
  @$pb.TagNumber(1)
  set fabricId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFabricId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFabricId() => $_clearField(1);
}

class GetFabricByIDResponse extends $pb.GeneratedMessage {
  factory GetFabricByIDResponse({
    $1.Fabric? fabric,
  }) {
    final result = create();
    if (fabric != null) result.fabric = fabric;
    return result;
  }

  GetFabricByIDResponse._();

  factory GetFabricByIDResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFabricByIDResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFabricByIDResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOM<$1.Fabric>(1, _omitFieldNames ? '' : 'fabric',
        subBuilder: $1.Fabric.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFabricByIDResponse clone() =>
      GetFabricByIDResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFabricByIDResponse copyWith(
          void Function(GetFabricByIDResponse) updates) =>
      super.copyWith((message) => updates(message as GetFabricByIDResponse))
          as GetFabricByIDResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFabricByIDResponse create() => GetFabricByIDResponse._();
  @$core.override
  GetFabricByIDResponse createEmptyInstance() => create();
  static $pb.PbList<GetFabricByIDResponse> createRepeated() =>
      $pb.PbList<GetFabricByIDResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFabricByIDResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFabricByIDResponse>(create);
  static GetFabricByIDResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Fabric get fabric => $_getN(0);
  @$pb.TagNumber(1)
  set fabric($1.Fabric value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFabric() => $_has(0);
  @$pb.TagNumber(1)
  void clearFabric() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Fabric ensureFabric() => $_ensure(0);
}

class GetFabricByNameRequest extends $pb.GeneratedMessage {
  factory GetFabricByNameRequest({
    $core.String? fabricName,
  }) {
    final result = create();
    if (fabricName != null) result.fabricName = fabricName;
    return result;
  }

  GetFabricByNameRequest._();

  factory GetFabricByNameRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFabricByNameRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFabricByNameRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fabricName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFabricByNameRequest clone() =>
      GetFabricByNameRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFabricByNameRequest copyWith(
          void Function(GetFabricByNameRequest) updates) =>
      super.copyWith((message) => updates(message as GetFabricByNameRequest))
          as GetFabricByNameRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFabricByNameRequest create() => GetFabricByNameRequest._();
  @$core.override
  GetFabricByNameRequest createEmptyInstance() => create();
  static $pb.PbList<GetFabricByNameRequest> createRepeated() =>
      $pb.PbList<GetFabricByNameRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFabricByNameRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFabricByNameRequest>(create);
  static GetFabricByNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fabricName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fabricName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFabricName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFabricName() => $_clearField(1);
}

class GetFabricByNameResponse extends $pb.GeneratedMessage {
  factory GetFabricByNameResponse({
    $1.Fabric? fabric,
  }) {
    final result = create();
    if (fabric != null) result.fabric = fabric;
    return result;
  }

  GetFabricByNameResponse._();

  factory GetFabricByNameResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFabricByNameResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFabricByNameResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOM<$1.Fabric>(1, _omitFieldNames ? '' : 'fabric',
        subBuilder: $1.Fabric.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFabricByNameResponse clone() =>
      GetFabricByNameResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFabricByNameResponse copyWith(
          void Function(GetFabricByNameResponse) updates) =>
      super.copyWith((message) => updates(message as GetFabricByNameResponse))
          as GetFabricByNameResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFabricByNameResponse create() => GetFabricByNameResponse._();
  @$core.override
  GetFabricByNameResponse createEmptyInstance() => create();
  static $pb.PbList<GetFabricByNameResponse> createRepeated() =>
      $pb.PbList<GetFabricByNameResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFabricByNameResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFabricByNameResponse>(create);
  static GetFabricByNameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Fabric get fabric => $_getN(0);
  @$pb.TagNumber(1)
  set fabric($1.Fabric value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFabric() => $_has(0);
  @$pb.TagNumber(1)
  void clearFabric() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Fabric ensureFabric() => $_ensure(0);
}

class GetAllFabricTaxonomyRequest extends $pb.GeneratedMessage {
  factory GetAllFabricTaxonomyRequest() => create();

  GetAllFabricTaxonomyRequest._();

  factory GetAllFabricTaxonomyRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAllFabricTaxonomyRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAllFabricTaxonomyRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllFabricTaxonomyRequest clone() =>
      GetAllFabricTaxonomyRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllFabricTaxonomyRequest copyWith(
          void Function(GetAllFabricTaxonomyRequest) updates) =>
      super.copyWith(
              (message) => updates(message as GetAllFabricTaxonomyRequest))
          as GetAllFabricTaxonomyRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllFabricTaxonomyRequest create() =>
      GetAllFabricTaxonomyRequest._();
  @$core.override
  GetAllFabricTaxonomyRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllFabricTaxonomyRequest> createRepeated() =>
      $pb.PbList<GetAllFabricTaxonomyRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllFabricTaxonomyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAllFabricTaxonomyRequest>(create);
  static GetAllFabricTaxonomyRequest? _defaultInstance;
}

class GetAllFabricTaxonomyResponse extends $pb.GeneratedMessage {
  factory GetAllFabricTaxonomyResponse({
    $3.Taxonomy? taxonomy,
  }) {
    final result = create();
    if (taxonomy != null) result.taxonomy = taxonomy;
    return result;
  }

  GetAllFabricTaxonomyResponse._();

  factory GetAllFabricTaxonomyResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAllFabricTaxonomyResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAllFabricTaxonomyResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOM<$3.Taxonomy>(1, _omitFieldNames ? '' : 'taxonomy',
        subBuilder: $3.Taxonomy.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllFabricTaxonomyResponse clone() =>
      GetAllFabricTaxonomyResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAllFabricTaxonomyResponse copyWith(
          void Function(GetAllFabricTaxonomyResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetAllFabricTaxonomyResponse))
          as GetAllFabricTaxonomyResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllFabricTaxonomyResponse create() =>
      GetAllFabricTaxonomyResponse._();
  @$core.override
  GetAllFabricTaxonomyResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllFabricTaxonomyResponse> createRepeated() =>
      $pb.PbList<GetAllFabricTaxonomyResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllFabricTaxonomyResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAllFabricTaxonomyResponse>(create);
  static GetAllFabricTaxonomyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Taxonomy get taxonomy => $_getN(0);
  @$pb.TagNumber(1)
  set taxonomy($3.Taxonomy value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTaxonomy() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaxonomy() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Taxonomy ensureTaxonomy() => $_ensure(0);
}

class GetCleaningCodesRequest extends $pb.GeneratedMessage {
  factory GetCleaningCodesRequest() => create();

  GetCleaningCodesRequest._();

  factory GetCleaningCodesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetCleaningCodesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetCleaningCodesRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetCleaningCodesRequest clone() =>
      GetCleaningCodesRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetCleaningCodesRequest copyWith(
          void Function(GetCleaningCodesRequest) updates) =>
      super.copyWith((message) => updates(message as GetCleaningCodesRequest))
          as GetCleaningCodesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCleaningCodesRequest create() => GetCleaningCodesRequest._();
  @$core.override
  GetCleaningCodesRequest createEmptyInstance() => create();
  static $pb.PbList<GetCleaningCodesRequest> createRepeated() =>
      $pb.PbList<GetCleaningCodesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCleaningCodesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetCleaningCodesRequest>(create);
  static GetCleaningCodesRequest? _defaultInstance;
}

class GetCleaningCodesResponse extends $pb.GeneratedMessage {
  factory GetCleaningCodesResponse({
    $core.Iterable<$core.MapEntry<$core.String, $4.CleaningCode>>?
        cleaningCodes,
  }) {
    final result = create();
    if (cleaningCodes != null) result.cleaningCodes.addEntries(cleaningCodes);
    return result;
  }

  GetCleaningCodesResponse._();

  factory GetCleaningCodesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetCleaningCodesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetCleaningCodesResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..m<$core.String, $4.CleaningCode>(
        1, _omitFieldNames ? '' : 'cleaningCodes',
        entryClassName: 'GetCleaningCodesResponse.CleaningCodesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $4.CleaningCode.create,
        valueDefaultOrMaker: $4.CleaningCode.getDefault,
        packageName: const $pb.PackageName('magnoliafabrics'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetCleaningCodesResponse clone() =>
      GetCleaningCodesResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetCleaningCodesResponse copyWith(
          void Function(GetCleaningCodesResponse) updates) =>
      super.copyWith((message) => updates(message as GetCleaningCodesResponse))
          as GetCleaningCodesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCleaningCodesResponse create() => GetCleaningCodesResponse._();
  @$core.override
  GetCleaningCodesResponse createEmptyInstance() => create();
  static $pb.PbList<GetCleaningCodesResponse> createRepeated() =>
      $pb.PbList<GetCleaningCodesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCleaningCodesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetCleaningCodesResponse>(create);
  static GetCleaningCodesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $4.CleaningCode> get cleaningCodes => $_getMap(0);
}

class GetFabricBySKURequest extends $pb.GeneratedMessage {
  factory GetFabricBySKURequest({
    $core.String? fabricSku,
  }) {
    final result = create();
    if (fabricSku != null) result.fabricSku = fabricSku;
    return result;
  }

  GetFabricBySKURequest._();

  factory GetFabricBySKURequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFabricBySKURequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFabricBySKURequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fabricSku')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFabricBySKURequest clone() =>
      GetFabricBySKURequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFabricBySKURequest copyWith(
          void Function(GetFabricBySKURequest) updates) =>
      super.copyWith((message) => updates(message as GetFabricBySKURequest))
          as GetFabricBySKURequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFabricBySKURequest create() => GetFabricBySKURequest._();
  @$core.override
  GetFabricBySKURequest createEmptyInstance() => create();
  static $pb.PbList<GetFabricBySKURequest> createRepeated() =>
      $pb.PbList<GetFabricBySKURequest>();
  @$core.pragma('dart2js:noInline')
  static GetFabricBySKURequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFabricBySKURequest>(create);
  static GetFabricBySKURequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fabricSku => $_getSZ(0);
  @$pb.TagNumber(1)
  set fabricSku($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFabricSku() => $_has(0);
  @$pb.TagNumber(1)
  void clearFabricSku() => $_clearField(1);
}

class GetFabricBySKUResponse extends $pb.GeneratedMessage {
  factory GetFabricBySKUResponse({
    $1.Fabric? fabric,
  }) {
    final result = create();
    if (fabric != null) result.fabric = fabric;
    return result;
  }

  GetFabricBySKUResponse._();

  factory GetFabricBySKUResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFabricBySKUResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFabricBySKUResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOM<$1.Fabric>(1, _omitFieldNames ? '' : 'fabric',
        subBuilder: $1.Fabric.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFabricBySKUResponse clone() =>
      GetFabricBySKUResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFabricBySKUResponse copyWith(
          void Function(GetFabricBySKUResponse) updates) =>
      super.copyWith((message) => updates(message as GetFabricBySKUResponse))
          as GetFabricBySKUResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFabricBySKUResponse create() => GetFabricBySKUResponse._();
  @$core.override
  GetFabricBySKUResponse createEmptyInstance() => create();
  static $pb.PbList<GetFabricBySKUResponse> createRepeated() =>
      $pb.PbList<GetFabricBySKUResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFabricBySKUResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFabricBySKUResponse>(create);
  static GetFabricBySKUResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Fabric get fabric => $_getN(0);
  @$pb.TagNumber(1)
  set fabric($1.Fabric value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFabric() => $_has(0);
  @$pb.TagNumber(1)
  void clearFabric() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Fabric ensureFabric() => $_ensure(0);
}

class GetDiscontinuedFabricsRequest extends $pb.GeneratedMessage {
  factory GetDiscontinuedFabricsRequest() => create();

  GetDiscontinuedFabricsRequest._();

  factory GetDiscontinuedFabricsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetDiscontinuedFabricsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetDiscontinuedFabricsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetDiscontinuedFabricsRequest clone() =>
      GetDiscontinuedFabricsRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetDiscontinuedFabricsRequest copyWith(
          void Function(GetDiscontinuedFabricsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as GetDiscontinuedFabricsRequest))
          as GetDiscontinuedFabricsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDiscontinuedFabricsRequest create() =>
      GetDiscontinuedFabricsRequest._();
  @$core.override
  GetDiscontinuedFabricsRequest createEmptyInstance() => create();
  static $pb.PbList<GetDiscontinuedFabricsRequest> createRepeated() =>
      $pb.PbList<GetDiscontinuedFabricsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDiscontinuedFabricsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetDiscontinuedFabricsRequest>(create);
  static GetDiscontinuedFabricsRequest? _defaultInstance;
}

class GetDiscontinuedFabricsResponse extends $pb.GeneratedMessage {
  factory GetDiscontinuedFabricsResponse({
    $core.Iterable<$5.DiscontinuedFabric>? fabrics,
  }) {
    final result = create();
    if (fabrics != null) result.fabrics.addAll(fabrics);
    return result;
  }

  GetDiscontinuedFabricsResponse._();

  factory GetDiscontinuedFabricsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetDiscontinuedFabricsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetDiscontinuedFabricsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..pc<$5.DiscontinuedFabric>(
        1, _omitFieldNames ? '' : 'fabrics', $pb.PbFieldType.PM,
        subBuilder: $5.DiscontinuedFabric.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetDiscontinuedFabricsResponse clone() =>
      GetDiscontinuedFabricsResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetDiscontinuedFabricsResponse copyWith(
          void Function(GetDiscontinuedFabricsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetDiscontinuedFabricsResponse))
          as GetDiscontinuedFabricsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDiscontinuedFabricsResponse create() =>
      GetDiscontinuedFabricsResponse._();
  @$core.override
  GetDiscontinuedFabricsResponse createEmptyInstance() => create();
  static $pb.PbList<GetDiscontinuedFabricsResponse> createRepeated() =>
      $pb.PbList<GetDiscontinuedFabricsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDiscontinuedFabricsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetDiscontinuedFabricsResponse>(create);
  static GetDiscontinuedFabricsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$5.DiscontinuedFabric> get fabrics => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
