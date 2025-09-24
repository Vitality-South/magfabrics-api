// This is a generated file - do not edit.
//
// Generated from api_inventory.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Inventory_Roll extends $pb.GeneratedMessage {
  factory Inventory_Roll({
    $core.String? iD,
    $core.String? quantity,
  }) {
    final result = create();
    if (iD != null) result.iD = iD;
    if (quantity != null) result.quantity = quantity;
    return result;
  }

  Inventory_Roll._();

  factory Inventory_Roll.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Inventory_Roll.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Inventory.Roll',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOS(2, _omitFieldNames ? '' : 'Quantity', protoName: 'Quantity')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Inventory_Roll clone() => Inventory_Roll()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Inventory_Roll copyWith(void Function(Inventory_Roll) updates) =>
      super.copyWith((message) => updates(message as Inventory_Roll))
          as Inventory_Roll;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Inventory_Roll create() => Inventory_Roll._();
  @$core.override
  Inventory_Roll createEmptyInstance() => create();
  static $pb.PbList<Inventory_Roll> createRepeated() =>
      $pb.PbList<Inventory_Roll>();
  @$core.pragma('dart2js:noInline')
  static Inventory_Roll getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Inventory_Roll>(create);
  static Inventory_Roll? _defaultInstance;

  /// @gotags: dynamo:"InventoryRollID"
  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  /// @gotags: dynamo:"InventoryRollQuantity"
  @$pb.TagNumber(2)
  $core.String get quantity => $_getSZ(1);
  @$pb.TagNumber(2)
  set quantity($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => $_clearField(2);
}

class Inventory_PO extends $pb.GeneratedMessage {
  factory Inventory_PO({
    $core.String? eTA,
    $core.String? amount,
  }) {
    final result = create();
    if (eTA != null) result.eTA = eTA;
    if (amount != null) result.amount = amount;
    return result;
  }

  Inventory_PO._();

  factory Inventory_PO.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Inventory_PO.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Inventory.PO',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ETA', protoName: 'ETA')
    ..aOS(2, _omitFieldNames ? '' : 'Amount', protoName: 'Amount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Inventory_PO clone() => Inventory_PO()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Inventory_PO copyWith(void Function(Inventory_PO) updates) =>
      super.copyWith((message) => updates(message as Inventory_PO))
          as Inventory_PO;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Inventory_PO create() => Inventory_PO._();
  @$core.override
  Inventory_PO createEmptyInstance() => create();
  static $pb.PbList<Inventory_PO> createRepeated() =>
      $pb.PbList<Inventory_PO>();
  @$core.pragma('dart2js:noInline')
  static Inventory_PO getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Inventory_PO>(create);
  static Inventory_PO? _defaultInstance;

  /// @gotags: dynamo:"InventoryPOETA"
  @$pb.TagNumber(1)
  $core.String get eTA => $_getSZ(0);
  @$pb.TagNumber(1)
  set eTA($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasETA() => $_has(0);
  @$pb.TagNumber(1)
  void clearETA() => $_clearField(1);

  /// @gotags: dynamo:"InventoryPOAmount"
  @$pb.TagNumber(2)
  $core.String get amount => $_getSZ(1);
  @$pb.TagNumber(2)
  set amount($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => $_clearField(2);
}

class Inventory extends $pb.GeneratedMessage {
  factory Inventory({
    $core.String? productCode,
    $core.Iterable<Inventory_Roll>? rolls,
    $core.String? total,
    $core.Iterable<Inventory_PO>? purchaseOrders,
    $core.String? totalOnPO,
    $core.String? onBackorder,
  }) {
    final result = create();
    if (productCode != null) result.productCode = productCode;
    if (rolls != null) result.rolls.addAll(rolls);
    if (total != null) result.total = total;
    if (purchaseOrders != null) result.purchaseOrders.addAll(purchaseOrders);
    if (totalOnPO != null) result.totalOnPO = totalOnPO;
    if (onBackorder != null) result.onBackorder = onBackorder;
    return result;
  }

  Inventory._();

  factory Inventory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Inventory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Inventory',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ProductCode', protoName: 'ProductCode')
    ..pc<Inventory_Roll>(2, _omitFieldNames ? '' : 'Rolls', $pb.PbFieldType.PM,
        protoName: 'Rolls', subBuilder: Inventory_Roll.create)
    ..aOS(3, _omitFieldNames ? '' : 'Total', protoName: 'Total')
    ..pc<Inventory_PO>(
        4, _omitFieldNames ? '' : 'PurchaseOrders', $pb.PbFieldType.PM,
        protoName: 'PurchaseOrders', subBuilder: Inventory_PO.create)
    ..aOS(5, _omitFieldNames ? '' : 'TotalOnPO', protoName: 'TotalOnPO')
    ..aOS(6, _omitFieldNames ? '' : 'OnBackorder', protoName: 'OnBackorder')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Inventory clone() => Inventory()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Inventory copyWith(void Function(Inventory) updates) =>
      super.copyWith((message) => updates(message as Inventory)) as Inventory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Inventory create() => Inventory._();
  @$core.override
  Inventory createEmptyInstance() => create();
  static $pb.PbList<Inventory> createRepeated() => $pb.PbList<Inventory>();
  @$core.pragma('dart2js:noInline')
  static Inventory getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inventory>(create);
  static Inventory? _defaultInstance;

  /// @gotags: dynamo:"FabricProductCode"
  @$pb.TagNumber(1)
  $core.String get productCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set productCode($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProductCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearProductCode() => $_clearField(1);

  /// @gotags: dynamo:"InventoryRolls"
  @$pb.TagNumber(2)
  $pb.PbList<Inventory_Roll> get rolls => $_getList(1);

  /// @gotags: dynamo:"InventoryTotal"
  @$pb.TagNumber(3)
  $core.String get total => $_getSZ(2);
  @$pb.TagNumber(3)
  set total($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotal() => $_clearField(3);

  /// @gotags: dynamo:"InventoryPO"
  @$pb.TagNumber(4)
  $pb.PbList<Inventory_PO> get purchaseOrders => $_getList(3);

  /// @gotags: dynamo:"InventoryTotalOnPO"
  @$pb.TagNumber(5)
  $core.String get totalOnPO => $_getSZ(4);
  @$pb.TagNumber(5)
  set totalOnPO($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTotalOnPO() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalOnPO() => $_clearField(5);

  /// @gotags: dynamo:"InventoryOnBackorder"
  @$pb.TagNumber(6)
  $core.String get onBackorder => $_getSZ(5);
  @$pb.TagNumber(6)
  set onBackorder($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasOnBackorder() => $_has(5);
  @$pb.TagNumber(6)
  void clearOnBackorder() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
