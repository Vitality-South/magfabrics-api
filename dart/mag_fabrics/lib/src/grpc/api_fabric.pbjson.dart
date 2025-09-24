// This is a generated file - do not edit.
//
// Generated from api_fabric.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fabricDescriptor instead')
const Fabric$json = {
  '1': 'Fabric',
  '2': [
    {'1': 'sku', '3': 1, '4': 1, '5': 9, '10': 'sku'},
    {'1': 'product_code', '3': 2, '4': 1, '5': 9, '10': 'productCode'},
    {'1': 'pattern', '3': 3, '4': 1, '5': 9, '10': 'pattern'},
    {'1': 'color', '3': 4, '4': 1, '5': 9, '10': 'color'},
    {
      '1': 'pattern_color_combo',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'patternColorCombo'
    },
    {'1': 'status', '3': 6, '4': 1, '5': 9, '10': 'status'},
    {'1': 'intro_date', '3': 7, '4': 1, '5': 9, '10': 'introDate'},
    {'1': 'contents', '3': 8, '4': 1, '5': 9, '10': 'contents'},
    {'1': 'width', '3': 9, '4': 1, '5': 9, '10': 'width'},
    {'1': 'direction', '3': 10, '4': 1, '5': 9, '10': 'direction'},
    {'1': 'h_repeat', '3': 11, '4': 1, '5': 9, '10': 'hRepeat'},
    {'1': 'v_repeat', '3': 12, '4': 1, '5': 9, '10': 'vRepeat'},
    {'1': 'cleaning_code', '3': 13, '4': 1, '5': 9, '10': 'cleaningCode'},
    {'1': 'double_rubs', '3': 14, '4': 1, '5': 9, '10': 'doubleRubs'},
    {'1': 'misc', '3': 15, '4': 1, '5': 9, '10': 'misc'},
    {'1': 'disclaimer', '3': 16, '4': 1, '5': 9, '10': 'disclaimer'},
    {'1': 'uses', '3': 17, '4': 3, '5': 9, '10': 'uses'},
    {'1': 'designs', '3': 18, '4': 3, '5': 9, '10': 'designs'},
    {'1': 'colors', '3': 19, '4': 3, '5': 9, '10': 'colors'},
    {'1': 'origin', '3': 20, '4': 1, '5': 9, '10': 'origin'},
    {'1': 'pilling_grade', '3': 21, '4': 1, '5': 9, '10': 'pillingGrade'},
    {'1': 'fire_code', '3': 22, '4': 1, '5': 9, '10': 'fireCode'},
    {'1': 'categories', '3': 23, '4': 3, '5': 9, '10': 'categories'},
    {'1': 'brand', '3': 24, '4': 1, '5': 9, '10': 'brand'},
    {'1': 'is_drop_shipped', '3': 25, '4': 1, '5': 8, '10': 'isDropShipped'},
    {'1': 'image', '3': 26, '4': 1, '5': 9, '10': 'image'},
    {'1': 'display_price', '3': 27, '4': 1, '5': 9, '10': 'displayPrice'},
    {'1': 'price', '3': 28, '4': 1, '5': 5, '10': 'price'},
    {
      '1': 'supplemental_images',
      '3': 29,
      '4': 3,
      '5': 9,
      '10': 'supplementalImages'
    },
    {
      '1': 'full_width_images',
      '3': 30,
      '4': 3,
      '5': 9,
      '10': 'fullWidthImages'
    },
    {
      '1': 'inventory',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.magnoliafabrics.Inventory',
      '10': 'inventory'
    },
  ],
};

/// Descriptor for `Fabric`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fabricDescriptor = $convert.base64Decode(
    'CgZGYWJyaWMSEAoDc2t1GAEgASgJUgNza3USIQoMcHJvZHVjdF9jb2RlGAIgASgJUgtwcm9kdW'
    'N0Q29kZRIYCgdwYXR0ZXJuGAMgASgJUgdwYXR0ZXJuEhQKBWNvbG9yGAQgASgJUgVjb2xvchIu'
    'ChNwYXR0ZXJuX2NvbG9yX2NvbWJvGAUgASgJUhFwYXR0ZXJuQ29sb3JDb21ibxIWCgZzdGF0dX'
    'MYBiABKAlSBnN0YXR1cxIdCgppbnRyb19kYXRlGAcgASgJUglpbnRyb0RhdGUSGgoIY29udGVu'
    'dHMYCCABKAlSCGNvbnRlbnRzEhQKBXdpZHRoGAkgASgJUgV3aWR0aBIcCglkaXJlY3Rpb24YCi'
    'ABKAlSCWRpcmVjdGlvbhIZCghoX3JlcGVhdBgLIAEoCVIHaFJlcGVhdBIZCgh2X3JlcGVhdBgM'
    'IAEoCVIHdlJlcGVhdBIjCg1jbGVhbmluZ19jb2RlGA0gASgJUgxjbGVhbmluZ0NvZGUSHwoLZG'
    '91YmxlX3J1YnMYDiABKAlSCmRvdWJsZVJ1YnMSEgoEbWlzYxgPIAEoCVIEbWlzYxIeCgpkaXNj'
    'bGFpbWVyGBAgASgJUgpkaXNjbGFpbWVyEhIKBHVzZXMYESADKAlSBHVzZXMSGAoHZGVzaWducx'
    'gSIAMoCVIHZGVzaWducxIWCgZjb2xvcnMYEyADKAlSBmNvbG9ycxIWCgZvcmlnaW4YFCABKAlS'
    'Bm9yaWdpbhIjCg1waWxsaW5nX2dyYWRlGBUgASgJUgxwaWxsaW5nR3JhZGUSGwoJZmlyZV9jb2'
    'RlGBYgASgJUghmaXJlQ29kZRIeCgpjYXRlZ29yaWVzGBcgAygJUgpjYXRlZ29yaWVzEhQKBWJy'
    'YW5kGBggASgJUgVicmFuZBImCg9pc19kcm9wX3NoaXBwZWQYGSABKAhSDWlzRHJvcFNoaXBwZW'
    'QSFAoFaW1hZ2UYGiABKAlSBWltYWdlEiMKDWRpc3BsYXlfcHJpY2UYGyABKAlSDGRpc3BsYXlQ'
    'cmljZRIUCgVwcmljZRgcIAEoBVIFcHJpY2USLwoTc3VwcGxlbWVudGFsX2ltYWdlcxgdIAMoCV'
    'ISc3VwcGxlbWVudGFsSW1hZ2VzEioKEWZ1bGxfd2lkdGhfaW1hZ2VzGB4gAygJUg9mdWxsV2lk'
    'dGhJbWFnZXMSOAoJaW52ZW50b3J5GB8gASgLMhoubWFnbm9saWFmYWJyaWNzLkludmVudG9yeV'
    'IJaW52ZW50b3J5');
