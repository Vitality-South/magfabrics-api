///
//  Generated code. Do not modify.
//  source: api_inventory.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Inventory_Roll extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Inventory.Roll', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Quantity', protoName: 'Quantity')
    ..hasRequiredFields = false
  ;

  Inventory_Roll._() : super();
  factory Inventory_Roll({
    $core.String? iD,
    $core.String? quantity,
  }) {
    final _result = create();
    if (iD != null) {
      _result.iD = iD;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    return _result;
  }
  factory Inventory_Roll.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Inventory_Roll.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Inventory_Roll clone() => Inventory_Roll()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Inventory_Roll copyWith(void Function(Inventory_Roll) updates) => super.copyWith((message) => updates(message as Inventory_Roll)) as Inventory_Roll; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Inventory_Roll create() => Inventory_Roll._();
  Inventory_Roll createEmptyInstance() => create();
  static $pb.PbList<Inventory_Roll> createRepeated() => $pb.PbList<Inventory_Roll>();
  @$core.pragma('dart2js:noInline')
  static Inventory_Roll getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inventory_Roll>(create);
  static Inventory_Roll? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get quantity => $_getSZ(1);
  @$pb.TagNumber(2)
  set quantity($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => clearField(2);
}

class Inventory_PO extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Inventory.PO', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ETA', protoName: 'ETA')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Amount', protoName: 'Amount')
    ..hasRequiredFields = false
  ;

  Inventory_PO._() : super();
  factory Inventory_PO({
    $core.String? eTA,
    $core.String? amount,
  }) {
    final _result = create();
    if (eTA != null) {
      _result.eTA = eTA;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory Inventory_PO.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Inventory_PO.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Inventory_PO clone() => Inventory_PO()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Inventory_PO copyWith(void Function(Inventory_PO) updates) => super.copyWith((message) => updates(message as Inventory_PO)) as Inventory_PO; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Inventory_PO create() => Inventory_PO._();
  Inventory_PO createEmptyInstance() => create();
  static $pb.PbList<Inventory_PO> createRepeated() => $pb.PbList<Inventory_PO>();
  @$core.pragma('dart2js:noInline')
  static Inventory_PO getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inventory_PO>(create);
  static Inventory_PO? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get eTA => $_getSZ(0);
  @$pb.TagNumber(1)
  set eTA($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasETA() => $_has(0);
  @$pb.TagNumber(1)
  void clearETA() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get amount => $_getSZ(1);
  @$pb.TagNumber(2)
  set amount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class Inventory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Inventory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ProductCode', protoName: 'ProductCode')
    ..pc<Inventory_Roll>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Rolls', $pb.PbFieldType.PM, protoName: 'Rolls', subBuilder: Inventory_Roll.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Total', protoName: 'Total')
    ..pc<Inventory_PO>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'PurchaseOrders', $pb.PbFieldType.PM, protoName: 'PurchaseOrders', subBuilder: Inventory_PO.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TotalOnPO', protoName: 'TotalOnPO')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'OnBackorder', protoName: 'OnBackorder')
    ..hasRequiredFields = false
  ;

  Inventory._() : super();
  factory Inventory({
    $core.String? productCode,
    $core.Iterable<Inventory_Roll>? rolls,
    $core.String? total,
    $core.Iterable<Inventory_PO>? purchaseOrders,
    $core.String? totalOnPO,
    $core.String? onBackorder,
  }) {
    final _result = create();
    if (productCode != null) {
      _result.productCode = productCode;
    }
    if (rolls != null) {
      _result.rolls.addAll(rolls);
    }
    if (total != null) {
      _result.total = total;
    }
    if (purchaseOrders != null) {
      _result.purchaseOrders.addAll(purchaseOrders);
    }
    if (totalOnPO != null) {
      _result.totalOnPO = totalOnPO;
    }
    if (onBackorder != null) {
      _result.onBackorder = onBackorder;
    }
    return _result;
  }
  factory Inventory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Inventory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Inventory clone() => Inventory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Inventory copyWith(void Function(Inventory) updates) => super.copyWith((message) => updates(message as Inventory)) as Inventory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Inventory create() => Inventory._();
  Inventory createEmptyInstance() => create();
  static $pb.PbList<Inventory> createRepeated() => $pb.PbList<Inventory>();
  @$core.pragma('dart2js:noInline')
  static Inventory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inventory>(create);
  static Inventory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get productCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set productCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProductCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearProductCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Inventory_Roll> get rolls => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get total => $_getSZ(2);
  @$pb.TagNumber(3)
  set total($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotal() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Inventory_PO> get purchaseOrders => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get totalOnPO => $_getSZ(4);
  @$pb.TagNumber(5)
  set totalOnPO($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalOnPO() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalOnPO() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get onBackorder => $_getSZ(5);
  @$pb.TagNumber(6)
  set onBackorder($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOnBackorder() => $_has(5);
  @$pb.TagNumber(6)
  void clearOnBackorder() => clearField(6);
}

