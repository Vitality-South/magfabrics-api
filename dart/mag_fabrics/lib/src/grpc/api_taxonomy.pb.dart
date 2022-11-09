///
//  Generated code. Do not modify.
//  source: api_taxonomy.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Taxonomy extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Taxonomy', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Brands', protoName: 'Brands')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Uses', protoName: 'Uses')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Colors', protoName: 'Colors')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Designs', protoName: 'Designs')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Categories', protoName: 'Categories')
    ..hasRequiredFields = false
  ;

  Taxonomy._() : super();
  factory Taxonomy({
    $core.Iterable<$core.String>? brands,
    $core.Iterable<$core.String>? uses,
    $core.Iterable<$core.String>? colors,
    $core.Iterable<$core.String>? designs,
    $core.Iterable<$core.String>? categories,
  }) {
    final _result = create();
    if (brands != null) {
      _result.brands.addAll(brands);
    }
    if (uses != null) {
      _result.uses.addAll(uses);
    }
    if (colors != null) {
      _result.colors.addAll(colors);
    }
    if (designs != null) {
      _result.designs.addAll(designs);
    }
    if (categories != null) {
      _result.categories.addAll(categories);
    }
    return _result;
  }
  factory Taxonomy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Taxonomy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Taxonomy clone() => Taxonomy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Taxonomy copyWith(void Function(Taxonomy) updates) => super.copyWith((message) => updates(message as Taxonomy)) as Taxonomy; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Taxonomy create() => Taxonomy._();
  Taxonomy createEmptyInstance() => create();
  static $pb.PbList<Taxonomy> createRepeated() => $pb.PbList<Taxonomy>();
  @$core.pragma('dart2js:noInline')
  static Taxonomy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Taxonomy>(create);
  static Taxonomy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get brands => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get uses => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get colors => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get designs => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get categories => $_getList(4);
}

