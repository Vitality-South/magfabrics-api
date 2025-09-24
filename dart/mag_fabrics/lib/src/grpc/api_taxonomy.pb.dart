// This is a generated file - do not edit.
//
// Generated from api_taxonomy.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Taxonomy extends $pb.GeneratedMessage {
  factory Taxonomy({
    $core.Iterable<$core.String>? brands,
    $core.Iterable<$core.String>? uses,
    $core.Iterable<$core.String>? colors,
    $core.Iterable<$core.String>? designs,
    $core.Iterable<$core.String>? categories,
  }) {
    final result = create();
    if (brands != null) result.brands.addAll(brands);
    if (uses != null) result.uses.addAll(uses);
    if (colors != null) result.colors.addAll(colors);
    if (designs != null) result.designs.addAll(designs);
    if (categories != null) result.categories.addAll(categories);
    return result;
  }

  Taxonomy._();

  factory Taxonomy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Taxonomy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Taxonomy',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'Brands', protoName: 'Brands')
    ..pPS(2, _omitFieldNames ? '' : 'Uses', protoName: 'Uses')
    ..pPS(3, _omitFieldNames ? '' : 'Colors', protoName: 'Colors')
    ..pPS(4, _omitFieldNames ? '' : 'Designs', protoName: 'Designs')
    ..pPS(5, _omitFieldNames ? '' : 'Categories', protoName: 'Categories')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Taxonomy clone() => Taxonomy()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Taxonomy copyWith(void Function(Taxonomy) updates) =>
      super.copyWith((message) => updates(message as Taxonomy)) as Taxonomy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Taxonomy create() => Taxonomy._();
  @$core.override
  Taxonomy createEmptyInstance() => create();
  static $pb.PbList<Taxonomy> createRepeated() => $pb.PbList<Taxonomy>();
  @$core.pragma('dart2js:noInline')
  static Taxonomy getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Taxonomy>(create);
  static Taxonomy? _defaultInstance;

  /// @gotags: dynamo:"TaxonomyBrands"
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get brands => $_getList(0);

  /// @gotags: dynamo:"TaxonomyUses"
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get uses => $_getList(1);

  /// @gotags: dynamo:"TaxonomyColors"
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get colors => $_getList(2);

  /// @gotags: dynamo:"TaxonomyDesigns"
  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get designs => $_getList(3);

  /// @gotags: dynamo:"TaxonomyCategories"
  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get categories => $_getList(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
