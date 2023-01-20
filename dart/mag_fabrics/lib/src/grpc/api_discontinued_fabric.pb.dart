///
//  Generated code. Do not modify.
//  source: api_discontinued_fabric.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DiscontinuedFabric extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DiscontinuedFabric', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PK', protoName: 'PK')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Sku', protoName: 'Sku')
    ..hasRequiredFields = false
  ;

  DiscontinuedFabric._() : super();
  factory DiscontinuedFabric({
    $core.String? pK,
    $core.String? sku,
  }) {
    final _result = create();
    if (pK != null) {
      _result.pK = pK;
    }
    if (sku != null) {
      _result.sku = sku;
    }
    return _result;
  }
  factory DiscontinuedFabric.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DiscontinuedFabric.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DiscontinuedFabric clone() => DiscontinuedFabric()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DiscontinuedFabric copyWith(void Function(DiscontinuedFabric) updates) => super.copyWith((message) => updates(message as DiscontinuedFabric)) as DiscontinuedFabric; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DiscontinuedFabric create() => DiscontinuedFabric._();
  DiscontinuedFabric createEmptyInstance() => create();
  static $pb.PbList<DiscontinuedFabric> createRepeated() => $pb.PbList<DiscontinuedFabric>();
  @$core.pragma('dart2js:noInline')
  static DiscontinuedFabric getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DiscontinuedFabric>(create);
  static DiscontinuedFabric? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pK => $_getSZ(0);
  @$pb.TagNumber(1)
  set pK($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPK() => $_has(0);
  @$pb.TagNumber(1)
  void clearPK() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sku => $_getSZ(1);
  @$pb.TagNumber(2)
  set sku($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSku() => $_has(1);
  @$pb.TagNumber(2)
  void clearSku() => clearField(2);
}

