// This is a generated file - do not edit.
//
// Generated from api_fabric.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'api_inventory.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Fabric extends $pb.GeneratedMessage {
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
    final result = create();
    if (sku != null) result.sku = sku;
    if (productCode != null) result.productCode = productCode;
    if (pattern != null) result.pattern = pattern;
    if (color != null) result.color = color;
    if (patternColorCombo != null) result.patternColorCombo = patternColorCombo;
    if (status != null) result.status = status;
    if (introDate != null) result.introDate = introDate;
    if (contents != null) result.contents = contents;
    if (width != null) result.width = width;
    if (direction != null) result.direction = direction;
    if (hRepeat != null) result.hRepeat = hRepeat;
    if (vRepeat != null) result.vRepeat = vRepeat;
    if (cleaningCode != null) result.cleaningCode = cleaningCode;
    if (doubleRubs != null) result.doubleRubs = doubleRubs;
    if (misc != null) result.misc = misc;
    if (disclaimer != null) result.disclaimer = disclaimer;
    if (uses != null) result.uses.addAll(uses);
    if (designs != null) result.designs.addAll(designs);
    if (colors != null) result.colors.addAll(colors);
    if (origin != null) result.origin = origin;
    if (pillingGrade != null) result.pillingGrade = pillingGrade;
    if (fireCode != null) result.fireCode = fireCode;
    if (categories != null) result.categories.addAll(categories);
    if (brand != null) result.brand = brand;
    if (isDropShipped != null) result.isDropShipped = isDropShipped;
    if (image != null) result.image = image;
    if (displayPrice != null) result.displayPrice = displayPrice;
    if (price != null) result.price = price;
    if (supplementalImages != null)
      result.supplementalImages.addAll(supplementalImages);
    if (fullWidthImages != null) result.fullWidthImages.addAll(fullWidthImages);
    if (inventory != null) result.inventory = inventory;
    return result;
  }

  Fabric._();

  factory Fabric.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Fabric.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Fabric',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'magnoliafabrics'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sku')
    ..aOS(2, _omitFieldNames ? '' : 'productCode')
    ..aOS(3, _omitFieldNames ? '' : 'pattern')
    ..aOS(4, _omitFieldNames ? '' : 'color')
    ..aOS(5, _omitFieldNames ? '' : 'patternColorCombo')
    ..aOS(6, _omitFieldNames ? '' : 'status')
    ..aOS(7, _omitFieldNames ? '' : 'introDate')
    ..aOS(8, _omitFieldNames ? '' : 'contents')
    ..aOS(9, _omitFieldNames ? '' : 'width')
    ..aOS(10, _omitFieldNames ? '' : 'direction')
    ..aOS(11, _omitFieldNames ? '' : 'hRepeat')
    ..aOS(12, _omitFieldNames ? '' : 'vRepeat')
    ..aOS(13, _omitFieldNames ? '' : 'cleaningCode')
    ..aOS(14, _omitFieldNames ? '' : 'doubleRubs')
    ..aOS(15, _omitFieldNames ? '' : 'misc')
    ..aOS(16, _omitFieldNames ? '' : 'disclaimer')
    ..pPS(17, _omitFieldNames ? '' : 'uses')
    ..pPS(18, _omitFieldNames ? '' : 'designs')
    ..pPS(19, _omitFieldNames ? '' : 'colors')
    ..aOS(20, _omitFieldNames ? '' : 'origin')
    ..aOS(21, _omitFieldNames ? '' : 'pillingGrade')
    ..aOS(22, _omitFieldNames ? '' : 'fireCode')
    ..pPS(23, _omitFieldNames ? '' : 'categories')
    ..aOS(24, _omitFieldNames ? '' : 'brand')
    ..aOB(25, _omitFieldNames ? '' : 'isDropShipped')
    ..aOS(26, _omitFieldNames ? '' : 'image')
    ..aOS(27, _omitFieldNames ? '' : 'displayPrice')
    ..a<$core.int>(28, _omitFieldNames ? '' : 'price', $pb.PbFieldType.O3)
    ..pPS(29, _omitFieldNames ? '' : 'supplementalImages')
    ..pPS(30, _omitFieldNames ? '' : 'fullWidthImages')
    ..aOM<$0.Inventory>(31, _omitFieldNames ? '' : 'inventory',
        subBuilder: $0.Inventory.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fabric clone() => Fabric()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Fabric copyWith(void Function(Fabric) updates) =>
      super.copyWith((message) => updates(message as Fabric)) as Fabric;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Fabric create() => Fabric._();
  @$core.override
  Fabric createEmptyInstance() => create();
  static $pb.PbList<Fabric> createRepeated() => $pb.PbList<Fabric>();
  @$core.pragma('dart2js:noInline')
  static Fabric getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fabric>(create);
  static Fabric? _defaultInstance;

  /// @gotags: dynamo:"FabricSKU"
  @$pb.TagNumber(1)
  $core.String get sku => $_getSZ(0);
  @$pb.TagNumber(1)
  set sku($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSku() => $_has(0);
  @$pb.TagNumber(1)
  void clearSku() => $_clearField(1);

  /// @gotags: dynamo:"FabricProductCode"
  @$pb.TagNumber(2)
  $core.String get productCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set productCode($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProductCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearProductCode() => $_clearField(2);

  /// @gotags: dynamo:"FabricPattern"
  @$pb.TagNumber(3)
  $core.String get pattern => $_getSZ(2);
  @$pb.TagNumber(3)
  set pattern($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPattern() => $_has(2);
  @$pb.TagNumber(3)
  void clearPattern() => $_clearField(3);

  /// @gotags: dynamo:"FabricPrimaryColor"
  @$pb.TagNumber(4)
  $core.String get color => $_getSZ(3);
  @$pb.TagNumber(4)
  set color($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasColor() => $_has(3);
  @$pb.TagNumber(4)
  void clearColor() => $_clearField(4);

  /// @gotags: dynamo:"FabricPatternColorCombo"
  @$pb.TagNumber(5)
  $core.String get patternColorCombo => $_getSZ(4);
  @$pb.TagNumber(5)
  set patternColorCombo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPatternColorCombo() => $_has(4);
  @$pb.TagNumber(5)
  void clearPatternColorCombo() => $_clearField(5);

  /// @gotags: dynamo:"FabricStatus"
  @$pb.TagNumber(6)
  $core.String get status => $_getSZ(5);
  @$pb.TagNumber(6)
  set status($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => $_clearField(6);

  /// @gotags: dynamo:"FabricIntroDate"
  @$pb.TagNumber(7)
  $core.String get introDate => $_getSZ(6);
  @$pb.TagNumber(7)
  set introDate($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIntroDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearIntroDate() => $_clearField(7);

  /// @gotags: dynamo:"FabricContents"
  @$pb.TagNumber(8)
  $core.String get contents => $_getSZ(7);
  @$pb.TagNumber(8)
  set contents($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasContents() => $_has(7);
  @$pb.TagNumber(8)
  void clearContents() => $_clearField(8);

  /// @gotags: dynamo:"FabricWidth"
  @$pb.TagNumber(9)
  $core.String get width => $_getSZ(8);
  @$pb.TagNumber(9)
  set width($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasWidth() => $_has(8);
  @$pb.TagNumber(9)
  void clearWidth() => $_clearField(9);

  /// @gotags: dynamo:"FabricDirection"
  @$pb.TagNumber(10)
  $core.String get direction => $_getSZ(9);
  @$pb.TagNumber(10)
  set direction($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasDirection() => $_has(9);
  @$pb.TagNumber(10)
  void clearDirection() => $_clearField(10);

  /// @gotags: dynamo:"FabricHRepeat"
  @$pb.TagNumber(11)
  $core.String get hRepeat => $_getSZ(10);
  @$pb.TagNumber(11)
  set hRepeat($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasHRepeat() => $_has(10);
  @$pb.TagNumber(11)
  void clearHRepeat() => $_clearField(11);

  /// @gotags: dynamo:"FabricVRepeat"
  @$pb.TagNumber(12)
  $core.String get vRepeat => $_getSZ(11);
  @$pb.TagNumber(12)
  set vRepeat($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasVRepeat() => $_has(11);
  @$pb.TagNumber(12)
  void clearVRepeat() => $_clearField(12);

  /// @gotags: dynamo:"FabricCleaningCode"
  @$pb.TagNumber(13)
  $core.String get cleaningCode => $_getSZ(12);
  @$pb.TagNumber(13)
  set cleaningCode($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasCleaningCode() => $_has(12);
  @$pb.TagNumber(13)
  void clearCleaningCode() => $_clearField(13);

  /// @gotags: dynamo:"FabricDoubleRubs"
  @$pb.TagNumber(14)
  $core.String get doubleRubs => $_getSZ(13);
  @$pb.TagNumber(14)
  set doubleRubs($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasDoubleRubs() => $_has(13);
  @$pb.TagNumber(14)
  void clearDoubleRubs() => $_clearField(14);

  /// @gotags: dynamo:"FabricMisc"
  @$pb.TagNumber(15)
  $core.String get misc => $_getSZ(14);
  @$pb.TagNumber(15)
  set misc($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasMisc() => $_has(14);
  @$pb.TagNumber(15)
  void clearMisc() => $_clearField(15);

  /// @gotags: dynamo:"FabricDisclaimer"
  @$pb.TagNumber(16)
  $core.String get disclaimer => $_getSZ(15);
  @$pb.TagNumber(16)
  set disclaimer($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasDisclaimer() => $_has(15);
  @$pb.TagNumber(16)
  void clearDisclaimer() => $_clearField(16);

  /// @gotags: dynamo:"FabricUses"
  @$pb.TagNumber(17)
  $pb.PbList<$core.String> get uses => $_getList(16);

  /// @gotags: dynamo:"FabricDesigns"
  @$pb.TagNumber(18)
  $pb.PbList<$core.String> get designs => $_getList(17);

  /// @gotags: dynamo:"FabricColors"
  @$pb.TagNumber(19)
  $pb.PbList<$core.String> get colors => $_getList(18);

  /// @gotags: dynamo:"FabricOrigin"
  @$pb.TagNumber(20)
  $core.String get origin => $_getSZ(19);
  @$pb.TagNumber(20)
  set origin($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasOrigin() => $_has(19);
  @$pb.TagNumber(20)
  void clearOrigin() => $_clearField(20);

  /// @gotags: dynamo:"FabricPillingGrade"
  @$pb.TagNumber(21)
  $core.String get pillingGrade => $_getSZ(20);
  @$pb.TagNumber(21)
  set pillingGrade($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasPillingGrade() => $_has(20);
  @$pb.TagNumber(21)
  void clearPillingGrade() => $_clearField(21);

  /// @gotags: dynamo:"FabricFireCode"
  @$pb.TagNumber(22)
  $core.String get fireCode => $_getSZ(21);
  @$pb.TagNumber(22)
  set fireCode($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasFireCode() => $_has(21);
  @$pb.TagNumber(22)
  void clearFireCode() => $_clearField(22);

  /// @gotags: dynamo:"FabricCategories"
  @$pb.TagNumber(23)
  $pb.PbList<$core.String> get categories => $_getList(22);

  /// @gotags: dynamo:"FabricBrand"
  @$pb.TagNumber(24)
  $core.String get brand => $_getSZ(23);
  @$pb.TagNumber(24)
  set brand($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasBrand() => $_has(23);
  @$pb.TagNumber(24)
  void clearBrand() => $_clearField(24);

  /// @gotags: dynamo:"FabricIsDropShipped"
  @$pb.TagNumber(25)
  $core.bool get isDropShipped => $_getBF(24);
  @$pb.TagNumber(25)
  set isDropShipped($core.bool value) => $_setBool(24, value);
  @$pb.TagNumber(25)
  $core.bool hasIsDropShipped() => $_has(24);
  @$pb.TagNumber(25)
  void clearIsDropShipped() => $_clearField(25);

  /// @gotags: dynamo:"FabricMainImage"
  @$pb.TagNumber(26)
  $core.String get image => $_getSZ(25);
  @$pb.TagNumber(26)
  set image($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasImage() => $_has(25);
  @$pb.TagNumber(26)
  void clearImage() => $_clearField(26);

  /// @gotags: dynamo:"FabricAPIDisplayPrice"
  @$pb.TagNumber(27)
  $core.String get displayPrice => $_getSZ(26);
  @$pb.TagNumber(27)
  set displayPrice($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasDisplayPrice() => $_has(26);
  @$pb.TagNumber(27)
  void clearDisplayPrice() => $_clearField(27);

  /// @gotags: dynamo:"FabricAPIPrice"
  @$pb.TagNumber(28)
  $core.int get price => $_getIZ(27);
  @$pb.TagNumber(28)
  set price($core.int value) => $_setSignedInt32(27, value);
  @$pb.TagNumber(28)
  $core.bool hasPrice() => $_has(27);
  @$pb.TagNumber(28)
  void clearPrice() => $_clearField(28);

  /// @gotags: dynamo:"FabricOtherImages"
  @$pb.TagNumber(29)
  $pb.PbList<$core.String> get supplementalImages => $_getList(28);

  /// @gotags: dynamo:"FabricFullWidthImages"
  @$pb.TagNumber(30)
  $pb.PbList<$core.String> get fullWidthImages => $_getList(29);

  /// @gotags: dynamo:"-"
  @$pb.TagNumber(31)
  $0.Inventory get inventory => $_getN(30);
  @$pb.TagNumber(31)
  set inventory($0.Inventory value) => $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasInventory() => $_has(30);
  @$pb.TagNumber(31)
  void clearInventory() => $_clearField(31);
  @$pb.TagNumber(31)
  $0.Inventory ensureInventory() => $_ensure(30);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
