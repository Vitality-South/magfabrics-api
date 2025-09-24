// This is a generated file - do not edit.
//
// Generated from cleaning_code.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class CleaningCode extends $pb.GeneratedMessage {
  factory CleaningCode({
    $core.String? id,
    $core.String? description,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (description != null) result.description = description;
    return result;
  }

  CleaningCode._();

  factory CleaningCode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CleaningCode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CleaningCode',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CleaningCode clone() => CleaningCode()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CleaningCode copyWith(void Function(CleaningCode) updates) =>
      super.copyWith((message) => updates(message as CleaningCode))
          as CleaningCode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CleaningCode create() => CleaningCode._();
  @$core.override
  CleaningCode createEmptyInstance() => create();
  static $pb.PbList<CleaningCode> createRepeated() =>
      $pb.PbList<CleaningCode>();
  @$core.pragma('dart2js:noInline')
  static CleaningCode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CleaningCode>(create);
  static CleaningCode? _defaultInstance;

  /// @gotags: dynamo:"CleaningCodeID"
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// @gotags: dynamo:"CleaningCodeDescription"
  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
