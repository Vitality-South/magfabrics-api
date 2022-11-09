///
//  Generated code. Do not modify.
//  source: api_fabric.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use fabricDescriptor instead')
const Fabric$json = const {
  '1': 'Fabric',
  '2': const [
    const {'1': 'sku', '3': 1, '4': 1, '5': 9, '10': 'sku'},
    const {'1': 'product_code', '3': 2, '4': 1, '5': 9, '10': 'productCode'},
    const {'1': 'pattern', '3': 3, '4': 1, '5': 9, '10': 'pattern'},
    const {'1': 'color', '3': 4, '4': 1, '5': 9, '10': 'color'},
    const {'1': 'pattern_color_combo', '3': 5, '4': 1, '5': 9, '10': 'patternColorCombo'},
    const {'1': 'status', '3': 6, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'intro_date', '3': 7, '4': 1, '5': 9, '10': 'introDate'},
    const {'1': 'contents', '3': 8, '4': 1, '5': 9, '10': 'contents'},
    const {'1': 'width', '3': 9, '4': 1, '5': 9, '10': 'width'},
    const {'1': 'direction', '3': 10, '4': 1, '5': 9, '10': 'direction'},
    const {'1': 'h_repeat', '3': 11, '4': 1, '5': 9, '10': 'hRepeat'},
    const {'1': 'v_repeat', '3': 12, '4': 1, '5': 9, '10': 'vRepeat'},
    const {'1': 'cleaning_code', '3': 13, '4': 1, '5': 9, '10': 'cleaningCode'},
    const {'1': 'double_rubs', '3': 14, '4': 1, '5': 9, '10': 'doubleRubs'},
    const {'1': 'misc', '3': 15, '4': 1, '5': 9, '10': 'misc'},
    const {'1': 'disclaimer', '3': 16, '4': 1, '5': 9, '10': 'disclaimer'},
    const {'1': 'uses', '3': 17, '4': 3, '5': 9, '10': 'uses'},
    const {'1': 'designs', '3': 18, '4': 3, '5': 9, '10': 'designs'},
    const {'1': 'colors', '3': 19, '4': 3, '5': 9, '10': 'colors'},
    const {'1': 'origin', '3': 20, '4': 1, '5': 9, '10': 'origin'},
    const {'1': 'pilling_grade', '3': 21, '4': 1, '5': 9, '10': 'pillingGrade'},
    const {'1': 'fire_code', '3': 22, '4': 1, '5': 9, '10': 'fireCode'},
    const {'1': 'categories', '3': 23, '4': 3, '5': 9, '10': 'categories'},
    const {'1': 'brand', '3': 24, '4': 1, '5': 9, '10': 'brand'},
    const {'1': 'is_drop_shipped', '3': 25, '4': 1, '5': 8, '10': 'isDropShipped'},
    const {'1': 'image', '3': 26, '4': 1, '5': 9, '10': 'image'},
    const {'1': 'display_price', '3': 27, '4': 1, '5': 9, '10': 'displayPrice'},
    const {'1': 'price', '3': 28, '4': 1, '5': 5, '10': 'price'},
    const {'1': 'supplemental_images', '3': 29, '4': 3, '5': 9, '10': 'supplementalImages'},
    const {'1': 'full_width_images', '3': 30, '4': 3, '5': 9, '10': 'fullWidthImages'},
    const {'1': 'inventory', '3': 31, '4': 1, '5': 11, '6': '.magnoliafabrics.Inventory', '10': 'inventory'},
  ],
};

/// Descriptor for `Fabric`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fabricDescriptor = $convert.base64Decode('CgZGYWJyaWMSEAoDc2t1GAEgASgJUgNza3USIQoMcHJvZHVjdF9jb2RlGAIgASgJUgtwcm9kdWN0Q29kZRIYCgdwYXR0ZXJuGAMgASgJUgdwYXR0ZXJuEhQKBWNvbG9yGAQgASgJUgVjb2xvchIuChNwYXR0ZXJuX2NvbG9yX2NvbWJvGAUgASgJUhFwYXR0ZXJuQ29sb3JDb21ibxIWCgZzdGF0dXMYBiABKAlSBnN0YXR1cxIdCgppbnRyb19kYXRlGAcgASgJUglpbnRyb0RhdGUSGgoIY29udGVudHMYCCABKAlSCGNvbnRlbnRzEhQKBXdpZHRoGAkgASgJUgV3aWR0aBIcCglkaXJlY3Rpb24YCiABKAlSCWRpcmVjdGlvbhIZCghoX3JlcGVhdBgLIAEoCVIHaFJlcGVhdBIZCgh2X3JlcGVhdBgMIAEoCVIHdlJlcGVhdBIjCg1jbGVhbmluZ19jb2RlGA0gASgJUgxjbGVhbmluZ0NvZGUSHwoLZG91YmxlX3J1YnMYDiABKAlSCmRvdWJsZVJ1YnMSEgoEbWlzYxgPIAEoCVIEbWlzYxIeCgpkaXNjbGFpbWVyGBAgASgJUgpkaXNjbGFpbWVyEhIKBHVzZXMYESADKAlSBHVzZXMSGAoHZGVzaWducxgSIAMoCVIHZGVzaWducxIWCgZjb2xvcnMYEyADKAlSBmNvbG9ycxIWCgZvcmlnaW4YFCABKAlSBm9yaWdpbhIjCg1waWxsaW5nX2dyYWRlGBUgASgJUgxwaWxsaW5nR3JhZGUSGwoJZmlyZV9jb2RlGBYgASgJUghmaXJlQ29kZRIeCgpjYXRlZ29yaWVzGBcgAygJUgpjYXRlZ29yaWVzEhQKBWJyYW5kGBggASgJUgVicmFuZBImCg9pc19kcm9wX3NoaXBwZWQYGSABKAhSDWlzRHJvcFNoaXBwZWQSFAoFaW1hZ2UYGiABKAlSBWltYWdlEiMKDWRpc3BsYXlfcHJpY2UYGyABKAlSDGRpc3BsYXlQcmljZRIUCgVwcmljZRgcIAEoBVIFcHJpY2USLwoTc3VwcGxlbWVudGFsX2ltYWdlcxgdIAMoCVISc3VwcGxlbWVudGFsSW1hZ2VzEioKEWZ1bGxfd2lkdGhfaW1hZ2VzGB4gAygJUg9mdWxsV2lkdGhJbWFnZXMSOAoJaW52ZW50b3J5GB8gASgLMhoubWFnbm9saWFmYWJyaWNzLkludmVudG9yeVIJaW52ZW50b3J5');
