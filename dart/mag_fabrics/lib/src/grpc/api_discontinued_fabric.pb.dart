// This is a generated file - do not edit.
//
// Generated from api_discontinued_fabric.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DiscontinuedFabric extends $pb.GeneratedMessage {
  factory DiscontinuedFabric({
    $core.String? sku,
    $core.String? productCode,
  }) {
    final result = create();
    if (sku != null) result.sku = sku;
    if (productCode != null) result.productCode = productCode;
    return result;
  }

  DiscontinuedFabric._();

  factory DiscontinuedFabric.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DiscontinuedFabric.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DiscontinuedFabric',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sku')
    ..aOS(2, _omitFieldNames ? '' : 'productCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiscontinuedFabric clone() => DiscontinuedFabric()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiscontinuedFabric copyWith(void Function(DiscontinuedFabric) updates) =>
      super.copyWith((message) => updates(message as DiscontinuedFabric))
          as DiscontinuedFabric;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DiscontinuedFabric create() => DiscontinuedFabric._();
  @$core.override
  DiscontinuedFabric createEmptyInstance() => create();
  static $pb.PbList<DiscontinuedFabric> createRepeated() =>
      $pb.PbList<DiscontinuedFabric>();
  @$core.pragma('dart2js:noInline')
  static DiscontinuedFabric getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DiscontinuedFabric>(create);
  static DiscontinuedFabric? _defaultInstance;

  /// @gotags: dynamo:"DiscontinuedFabricSKU"
  @$pb.TagNumber(1)
  $core.String get sku => $_getSZ(0);
  @$pb.TagNumber(1)
  set sku($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSku() => $_has(0);
  @$pb.TagNumber(1)
  void clearSku() => $_clearField(1);

  /// @gotags: dynamo:"DiscontinuedFabricProductCode"
  @$pb.TagNumber(2)
  $core.String get productCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set productCode($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProductCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearProductCode() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
