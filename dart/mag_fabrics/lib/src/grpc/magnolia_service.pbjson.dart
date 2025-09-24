// This is a generated file - do not edit.
//
// Generated from magnolia_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getAllFabricsRequestDescriptor instead')
const GetAllFabricsRequest$json = {
  '1': 'GetAllFabricsRequest',
};

/// Descriptor for `GetAllFabricsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllFabricsRequestDescriptor =
    $convert.base64Decode('ChRHZXRBbGxGYWJyaWNzUmVxdWVzdA==');

@$core.Deprecated('Use getAllFabricsResponseDescriptor instead')
const GetAllFabricsResponse$json = {
  '1': 'GetAllFabricsResponse',
  '2': [
    {
      '1': 'fabrics',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.magnoliafabrics.Fabric',
      '10': 'fabrics'
    },
  ],
};

/// Descriptor for `GetAllFabricsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllFabricsResponseDescriptor = $convert.base64Decode(
    'ChVHZXRBbGxGYWJyaWNzUmVzcG9uc2USMQoHZmFicmljcxgBIAMoCzIXLm1hZ25vbGlhZmFicm'
    'ljcy5GYWJyaWNSB2ZhYnJpY3M=');

@$core.Deprecated('Use getAllFabricsWithoutInventoryRequestDescriptor instead')
const GetAllFabricsWithoutInventoryRequest$json = {
  '1': 'GetAllFabricsWithoutInventoryRequest',
};

/// Descriptor for `GetAllFabricsWithoutInventoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllFabricsWithoutInventoryRequestDescriptor =
    $convert
        .base64Decode('CiRHZXRBbGxGYWJyaWNzV2l0aG91dEludmVudG9yeVJlcXVlc3Q=');

@$core.Deprecated('Use getAllFabricsWithoutInventoryResponseDescriptor instead')
const GetAllFabricsWithoutInventoryResponse$json = {
  '1': 'GetAllFabricsWithoutInventoryResponse',
  '2': [
    {
      '1': 'fabrics',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.magnoliafabrics.Fabric',
      '10': 'fabrics'
    },
  ],
};

/// Descriptor for `GetAllFabricsWithoutInventoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllFabricsWithoutInventoryResponseDescriptor =
    $convert.base64Decode(
        'CiVHZXRBbGxGYWJyaWNzV2l0aG91dEludmVudG9yeVJlc3BvbnNlEjEKB2ZhYnJpY3MYASADKA'
        'syFy5tYWdub2xpYWZhYnJpY3MuRmFicmljUgdmYWJyaWNz');

@$core.Deprecated('Use getAllInventoryRequestDescriptor instead')
const GetAllInventoryRequest$json = {
  '1': 'GetAllInventoryRequest',
};

/// Descriptor for `GetAllInventoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllInventoryRequestDescriptor =
    $convert.base64Decode('ChZHZXRBbGxJbnZlbnRvcnlSZXF1ZXN0');

@$core.Deprecated('Use getAllInventoryResponseDescriptor instead')
const GetAllInventoryResponse$json = {
  '1': 'GetAllInventoryResponse',
  '2': [
    {
      '1': 'inventory',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.magnoliafabrics.Inventory',
      '10': 'inventory'
    },
  ],
};

/// Descriptor for `GetAllInventoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllInventoryResponseDescriptor =
    $convert.base64Decode(
        'ChdHZXRBbGxJbnZlbnRvcnlSZXNwb25zZRI4CglpbnZlbnRvcnkYASADKAsyGi5tYWdub2xpYW'
        'ZhYnJpY3MuSW52ZW50b3J5UglpbnZlbnRvcnk=');

@$core.Deprecated('Use getFabricByIDRequestDescriptor instead')
const GetFabricByIDRequest$json = {
  '1': 'GetFabricByIDRequest',
  '2': [
    {'1': 'fabric_id', '3': 1, '4': 1, '5': 9, '10': 'fabricId'},
  ],
};

/// Descriptor for `GetFabricByIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFabricByIDRequestDescriptor =
    $convert.base64Decode(
        'ChRHZXRGYWJyaWNCeUlEUmVxdWVzdBIbCglmYWJyaWNfaWQYASABKAlSCGZhYnJpY0lk');

@$core.Deprecated('Use getFabricByIDResponseDescriptor instead')
const GetFabricByIDResponse$json = {
  '1': 'GetFabricByIDResponse',
  '2': [
    {
      '1': 'fabric',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.magnoliafabrics.Fabric',
      '10': 'fabric'
    },
  ],
};

/// Descriptor for `GetFabricByIDResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFabricByIDResponseDescriptor = $convert.base64Decode(
    'ChVHZXRGYWJyaWNCeUlEUmVzcG9uc2USLwoGZmFicmljGAEgASgLMhcubWFnbm9saWFmYWJyaW'
    'NzLkZhYnJpY1IGZmFicmlj');

@$core.Deprecated('Use getFabricByNameRequestDescriptor instead')
const GetFabricByNameRequest$json = {
  '1': 'GetFabricByNameRequest',
  '2': [
    {'1': 'fabric_name', '3': 1, '4': 1, '5': 9, '10': 'fabricName'},
  ],
};

/// Descriptor for `GetFabricByNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFabricByNameRequestDescriptor =
    $convert.base64Decode(
        'ChZHZXRGYWJyaWNCeU5hbWVSZXF1ZXN0Eh8KC2ZhYnJpY19uYW1lGAEgASgJUgpmYWJyaWNOYW'
        '1l');

@$core.Deprecated('Use getFabricByNameResponseDescriptor instead')
const GetFabricByNameResponse$json = {
  '1': 'GetFabricByNameResponse',
  '2': [
    {
      '1': 'fabric',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.magnoliafabrics.Fabric',
      '10': 'fabric'
    },
  ],
};

/// Descriptor for `GetFabricByNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFabricByNameResponseDescriptor =
    $convert.base64Decode(
        'ChdHZXRGYWJyaWNCeU5hbWVSZXNwb25zZRIvCgZmYWJyaWMYASABKAsyFy5tYWdub2xpYWZhYn'
        'JpY3MuRmFicmljUgZmYWJyaWM=');

@$core.Deprecated('Use getAllFabricTaxonomyRequestDescriptor instead')
const GetAllFabricTaxonomyRequest$json = {
  '1': 'GetAllFabricTaxonomyRequest',
};

/// Descriptor for `GetAllFabricTaxonomyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllFabricTaxonomyRequestDescriptor =
    $convert.base64Decode('ChtHZXRBbGxGYWJyaWNUYXhvbm9teVJlcXVlc3Q=');

@$core.Deprecated('Use getAllFabricTaxonomyResponseDescriptor instead')
const GetAllFabricTaxonomyResponse$json = {
  '1': 'GetAllFabricTaxonomyResponse',
  '2': [
    {
      '1': 'taxonomy',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.magnoliafabrics.Taxonomy',
      '10': 'taxonomy'
    },
  ],
};

/// Descriptor for `GetAllFabricTaxonomyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllFabricTaxonomyResponseDescriptor =
    $convert.base64Decode(
        'ChxHZXRBbGxGYWJyaWNUYXhvbm9teVJlc3BvbnNlEjUKCHRheG9ub215GAEgASgLMhkubWFnbm'
        '9saWFmYWJyaWNzLlRheG9ub215Ugh0YXhvbm9teQ==');

@$core.Deprecated('Use getCleaningCodesRequestDescriptor instead')
const GetCleaningCodesRequest$json = {
  '1': 'GetCleaningCodesRequest',
};

/// Descriptor for `GetCleaningCodesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCleaningCodesRequestDescriptor =
    $convert.base64Decode('ChdHZXRDbGVhbmluZ0NvZGVzUmVxdWVzdA==');

@$core.Deprecated('Use getCleaningCodesResponseDescriptor instead')
const GetCleaningCodesResponse$json = {
  '1': 'GetCleaningCodesResponse',
  '2': [
    {
      '1': 'cleaning_codes',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.magnoliafabrics.GetCleaningCodesResponse.CleaningCodesEntry',
      '10': 'cleaningCodes'
    },
  ],
  '3': [GetCleaningCodesResponse_CleaningCodesEntry$json],
};

@$core.Deprecated('Use getCleaningCodesResponseDescriptor instead')
const GetCleaningCodesResponse_CleaningCodesEntry$json = {
  '1': 'CleaningCodesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.magnoliafabrics.CleaningCode',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `GetCleaningCodesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCleaningCodesResponseDescriptor = $convert.base64Decode(
    'ChhHZXRDbGVhbmluZ0NvZGVzUmVzcG9uc2USYwoOY2xlYW5pbmdfY29kZXMYASADKAsyPC5tYW'
    'dub2xpYWZhYnJpY3MuR2V0Q2xlYW5pbmdDb2Rlc1Jlc3BvbnNlLkNsZWFuaW5nQ29kZXNFbnRy'
    'eVINY2xlYW5pbmdDb2RlcxpfChJDbGVhbmluZ0NvZGVzRW50cnkSEAoDa2V5GAEgASgJUgNrZX'
    'kSMwoFdmFsdWUYAiABKAsyHS5tYWdub2xpYWZhYnJpY3MuQ2xlYW5pbmdDb2RlUgV2YWx1ZToC'
    'OAE=');

@$core.Deprecated('Use getFabricBySKURequestDescriptor instead')
const GetFabricBySKURequest$json = {
  '1': 'GetFabricBySKURequest',
  '2': [
    {'1': 'fabric_sku', '3': 1, '4': 1, '5': 9, '10': 'fabricSku'},
  ],
};

/// Descriptor for `GetFabricBySKURequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFabricBySKURequestDescriptor = $convert.base64Decode(
    'ChVHZXRGYWJyaWNCeVNLVVJlcXVlc3QSHQoKZmFicmljX3NrdRgBIAEoCVIJZmFicmljU2t1');

@$core.Deprecated('Use getFabricBySKUResponseDescriptor instead')
const GetFabricBySKUResponse$json = {
  '1': 'GetFabricBySKUResponse',
  '2': [
    {
      '1': 'fabric',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.magnoliafabrics.Fabric',
      '10': 'fabric'
    },
  ],
};

/// Descriptor for `GetFabricBySKUResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFabricBySKUResponseDescriptor =
    $convert.base64Decode(
        'ChZHZXRGYWJyaWNCeVNLVVJlc3BvbnNlEi8KBmZhYnJpYxgBIAEoCzIXLm1hZ25vbGlhZmFicm'
        'ljcy5GYWJyaWNSBmZhYnJpYw==');

@$core.Deprecated('Use getDiscontinuedFabricsRequestDescriptor instead')
const GetDiscontinuedFabricsRequest$json = {
  '1': 'GetDiscontinuedFabricsRequest',
};

/// Descriptor for `GetDiscontinuedFabricsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDiscontinuedFabricsRequestDescriptor =
    $convert.base64Decode('Ch1HZXREaXNjb250aW51ZWRGYWJyaWNzUmVxdWVzdA==');

@$core.Deprecated('Use getDiscontinuedFabricsResponseDescriptor instead')
const GetDiscontinuedFabricsResponse$json = {
  '1': 'GetDiscontinuedFabricsResponse',
  '2': [
    {
      '1': 'fabrics',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.magnoliafabrics.DiscontinuedFabric',
      '10': 'fabrics'
    },
  ],
};

/// Descriptor for `GetDiscontinuedFabricsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDiscontinuedFabricsResponseDescriptor =
    $convert.base64Decode(
        'Ch5HZXREaXNjb250aW51ZWRGYWJyaWNzUmVzcG9uc2USPQoHZmFicmljcxgBIAMoCzIjLm1hZ2'
        '5vbGlhZmFicmljcy5EaXNjb250aW51ZWRGYWJyaWNSB2ZhYnJpY3M=');
