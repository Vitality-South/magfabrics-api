///
//  Generated code. Do not modify.
//  source: api_fabric.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'api_inventory.pb.dart' as $0;

class Fabric extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Fabric', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'magnoliafabrics'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sku')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'productCode')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pattern')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patternColorCombo')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'introDate')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contents')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hRepeat')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vRepeat')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cleaningCode')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'doubleRubs')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'misc')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disclaimer')
    ..pPS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uses')
    ..pPS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'designs')
    ..pPS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'colors')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'origin')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pillingGrade')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fireCode')
    ..pPS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categories')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brand')
    ..aOB(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isDropShipped')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image')
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayPrice')
    ..a<$core.int>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.O3)
    ..pPS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplementalImages')
    ..pPS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fullWidthImages')
    ..aOM<$0.Inventory>(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inventory', subBuilder: $0.Inventory.create)
    ..hasRequiredFields = false
  ;

  Fabric._() : super();
  factory Fabric({
    $core.String? sku,
    $core.String? productCode,
    $core.String? pattern,
    $core.String? color,
    $core.String? patternColorCombo,
    $core.String? status,
    $core.String? introDate,
    $core.String? contents,
    $core.String? width,
    $core.String? direction,
    $core.String? hRepeat,
    $core.String? vRepeat,
    $core.String? cleaningCode,
    $core.String? doubleRubs,
    $core.String? misc,
    $core.String? disclaimer,
    $core.Iterable<$core.String>? uses,
    $core.Iterable<$core.String>? designs,
    $core.Iterable<$core.String>? colors,
    $core.String? origin,
    $core.String? pillingGrade,
    $core.String? fireCode,
    $core.Iterable<$core.String>? categories,
    $core.String? brand,
    $core.bool? isDropShipped,
    $core.String? image,
    $core.String? displayPrice,
    $core.int? price,
    $core.Iterable<$core.String>? supplementalImages,
    $core.Iterable<$core.String>? fullWidthImages,
    $0.Inventory? inventory,
  }) {
    final _result = create();
    if (sku != null) {
      _result.sku = sku;
    }
    if (productCode != null) {
      _result.productCode = productCode;
    }
    if (pattern != null) {
      _result.pattern = pattern;
    }
    if (color != null) {
      _result.color = color;
    }
    if (patternColorCombo != null) {
      _result.patternColorCombo = patternColorCombo;
    }
    if (status != null) {
      _result.status = status;
    }
    if (introDate != null) {
      _result.introDate = introDate;
    }
    if (contents != null) {
      _result.contents = contents;
    }
    if (width != null) {
      _result.width = width;
    }
    if (direction != null) {
      _result.direction = direction;
    }
    if (hRepeat != null) {
      _result.hRepeat = hRepeat;
    }
    if (vRepeat != null) {
      _result.vRepeat = vRepeat;
    }
    if (cleaningCode != null) {
      _result.cleaningCode = cleaningCode;
    }
    if (doubleRubs != null) {
      _result.doubleRubs = doubleRubs;
    }
    if (misc != null) {
      _result.misc = misc;
    }
    if (disclaimer != null) {
      _result.disclaimer = disclaimer;
    }
    if (uses != null) {
      _result.uses.addAll(uses);
    }
    if (designs != null) {
      _result.designs.addAll(designs);
    }
    if (colors != null) {
      _result.colors.addAll(colors);
    }
    if (origin != null) {
      _result.origin = origin;
    }
    if (pillingGrade != null) {
      _result.pillingGrade = pillingGrade;
    }
    if (fireCode != null) {
      _result.fireCode = fireCode;
    }
    if (categories != null) {
      _result.categories.addAll(categories);
    }
    if (brand != null) {
      _result.brand = brand;
    }
    if (isDropShipped != null) {
      _result.isDropShipped = isDropShipped;
    }
    if (image != null) {
      _result.image = image;
    }
    if (displayPrice != null) {
      _result.displayPrice = displayPrice;
    }
    if (price != null) {
      _result.price = price;
    }
    if (supplementalImages != null) {
      _result.supplementalImages.addAll(supplementalImages);
    }
    if (fullWidthImages != null) {
      _result.fullWidthImages.addAll(fullWidthImages);
    }
    if (inventory != null) {
      _result.inventory = inventory;
    }
    return _result;
  }
  factory Fabric.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Fabric.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Fabric clone() => Fabric()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Fabric copyWith(void Function(Fabric) updates) => super.copyWith((message) => updates(message as Fabric)) as Fabric; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Fabric create() => Fabric._();
  Fabric createEmptyInstance() => create();
  static $pb.PbList<Fabric> createRepeated() => $pb.PbList<Fabric>();
  @$core.pragma('dart2js:noInline')
  static Fabric getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fabric>(create);
  static Fabric? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sku => $_getSZ(0);
  @$pb.TagNumber(1)
  set sku($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSku() => $_has(0);
  @$pb.TagNumber(1)
  void clearSku() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get productCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set productCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProductCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearProductCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pattern => $_getSZ(2);
  @$pb.TagNumber(3)
  set pattern($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPattern() => $_has(2);
  @$pb.TagNumber(3)
  void clearPattern() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get color => $_getSZ(3);
  @$pb.TagNumber(4)
  set color($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearColor() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get patternColorCombo => $_getSZ(4);
  @$pb.TagNumber(5)
  set patternColorCombo($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPatternColorCombo() => $_has(4);
  @$pb.TagNumber(5)
  void clearPatternColorCombo() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get status => $_getSZ(5);
  @$pb.TagNumber(6)
  set status($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get introDate => $_getSZ(6);
  @$pb.TagNumber(7)
  set introDate($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIntroDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearIntroDate() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get contents => $_getSZ(7);
  @$pb.TagNumber(8)
  set contents($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasContents() => $_has(7);
  @$pb.TagNumber(8)
  void clearContents() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get width => $_getSZ(8);
  @$pb.TagNumber(9)
  set width($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasWidth() => $_has(8);
  @$pb.TagNumber(9)
  void clearWidth() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get direction => $_getSZ(9);
  @$pb.TagNumber(10)
  set direction($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDirection() => $_has(9);
  @$pb.TagNumber(10)
  void clearDirection() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get hRepeat => $_getSZ(10);
  @$pb.TagNumber(11)
  set hRepeat($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasHRepeat() => $_has(10);
  @$pb.TagNumber(11)
  void clearHRepeat() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get vRepeat => $_getSZ(11);
  @$pb.TagNumber(12)
  set vRepeat($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasVRepeat() => $_has(11);
  @$pb.TagNumber(12)
  void clearVRepeat() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get cleaningCode => $_getSZ(12);
  @$pb.TagNumber(13)
  set cleaningCode($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasCleaningCode() => $_has(12);
  @$pb.TagNumber(13)
  void clearCleaningCode() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get doubleRubs => $_getSZ(13);
  @$pb.TagNumber(14)
  set doubleRubs($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasDoubleRubs() => $_has(13);
  @$pb.TagNumber(14)
  void clearDoubleRubs() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get misc => $_getSZ(14);
  @$pb.TagNumber(15)
  set misc($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasMisc() => $_has(14);
  @$pb.TagNumber(15)
  void clearMisc() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get disclaimer => $_getSZ(15);
  @$pb.TagNumber(16)
  set disclaimer($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasDisclaimer() => $_has(15);
  @$pb.TagNumber(16)
  void clearDisclaimer() => clearField(16);

  @$pb.TagNumber(17)
  $core.List<$core.String> get uses => $_getList(16);

  @$pb.TagNumber(18)
  $core.List<$core.String> get designs => $_getList(17);

  @$pb.TagNumber(19)
  $core.List<$core.String> get colors => $_getList(18);

  @$pb.TagNumber(20)
  $core.String get origin => $_getSZ(19);
  @$pb.TagNumber(20)
  set origin($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasOrigin() => $_has(19);
  @$pb.TagNumber(20)
  void clearOrigin() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get pillingGrade => $_getSZ(20);
  @$pb.TagNumber(21)
  set pillingGrade($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasPillingGrade() => $_has(20);
  @$pb.TagNumber(21)
  void clearPillingGrade() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get fireCode => $_getSZ(21);
  @$pb.TagNumber(22)
  set fireCode($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasFireCode() => $_has(21);
  @$pb.TagNumber(22)
  void clearFireCode() => clearField(22);

  @$pb.TagNumber(23)
  $core.List<$core.String> get categories => $_getList(22);

  @$pb.TagNumber(24)
  $core.String get brand => $_getSZ(23);
  @$pb.TagNumber(24)
  set brand($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasBrand() => $_has(23);
  @$pb.TagNumber(24)
  void clearBrand() => clearField(24);

  @$pb.TagNumber(25)
  $core.bool get isDropShipped => $_getBF(24);
  @$pb.TagNumber(25)
  set isDropShipped($core.bool v) { $_setBool(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasIsDropShipped() => $_has(24);
  @$pb.TagNumber(25)
  void clearIsDropShipped() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get image => $_getSZ(25);
  @$pb.TagNumber(26)
  set image($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasImage() => $_has(25);
  @$pb.TagNumber(26)
  void clearImage() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get displayPrice => $_getSZ(26);
  @$pb.TagNumber(27)
  set displayPrice($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasDisplayPrice() => $_has(26);
  @$pb.TagNumber(27)
  void clearDisplayPrice() => clearField(27);

  @$pb.TagNumber(28)
  $core.int get price => $_getIZ(27);
  @$pb.TagNumber(28)
  set price($core.int v) { $_setSignedInt32(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasPrice() => $_has(27);
  @$pb.TagNumber(28)
  void clearPrice() => clearField(28);

  @$pb.TagNumber(29)
  $core.List<$core.String> get supplementalImages => $_getList(28);

  @$pb.TagNumber(30)
  $core.List<$core.String> get fullWidthImages => $_getList(29);

  @$pb.TagNumber(31)
  $0.Inventory get inventory => $_getN(30);
  @$pb.TagNumber(31)
  set inventory($0.Inventory v) { setField(31, v); }
  @$pb.TagNumber(31)
  $core.bool hasInventory() => $_has(30);
  @$pb.TagNumber(31)
  void clearInventory() => clearField(31);
  @$pb.TagNumber(31)
  $0.Inventory ensureInventory() => $_ensure(30);
}

