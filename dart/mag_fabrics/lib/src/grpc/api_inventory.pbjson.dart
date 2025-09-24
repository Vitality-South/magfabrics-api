// This is a generated file - do not edit.
//
// Generated from api_inventory.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory$json = {
  '1': 'Inventory',
  '2': [
    {'1': 'ProductCode', '3': 1, '4': 1, '5': 9, '10': 'ProductCode'},
    {
      '1': 'Rolls',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.magnoliafabrics.Inventory.Roll',
      '10': 'Rolls'
    },
    {'1': 'Total', '3': 3, '4': 1, '5': 9, '10': 'Total'},
    {
      '1': 'PurchaseOrders',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.magnoliafabrics.Inventory.PO',
      '10': 'PurchaseOrders'
    },
    {'1': 'TotalOnPO', '3': 5, '4': 1, '5': 9, '10': 'TotalOnPO'},
    {'1': 'OnBackorder', '3': 6, '4': 1, '5': 9, '10': 'OnBackorder'},
  ],
  '3': [Inventory_Roll$json, Inventory_PO$json],
};

@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory_Roll$json = {
  '1': 'Roll',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    {'1': 'Quantity', '3': 2, '4': 1, '5': 9, '10': 'Quantity'},
  ],
};

@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory_PO$json = {
  '1': 'PO',
  '2': [
    {'1': 'ETA', '3': 1, '4': 1, '5': 9, '10': 'ETA'},
    {'1': 'Amount', '3': 2, '4': 1, '5': 9, '10': 'Amount'},
  ],
};

/// Descriptor for `Inventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inventoryDescriptor = $convert.base64Decode(
    'CglJbnZlbnRvcnkSIAoLUHJvZHVjdENvZGUYASABKAlSC1Byb2R1Y3RDb2RlEjUKBVJvbGxzGA'
    'IgAygLMh8ubWFnbm9saWFmYWJyaWNzLkludmVudG9yeS5Sb2xsUgVSb2xscxIUCgVUb3RhbBgD'
    'IAEoCVIFVG90YWwSRQoOUHVyY2hhc2VPcmRlcnMYBCADKAsyHS5tYWdub2xpYWZhYnJpY3MuSW'
    '52ZW50b3J5LlBPUg5QdXJjaGFzZU9yZGVycxIcCglUb3RhbE9uUE8YBSABKAlSCVRvdGFsT25Q'
    'TxIgCgtPbkJhY2tvcmRlchgGIAEoCVILT25CYWNrb3JkZXIaMgoEUm9sbBIOCgJJRBgBIAEoCV'
    'ICSUQSGgoIUXVhbnRpdHkYAiABKAlSCFF1YW50aXR5Gi4KAlBPEhAKA0VUQRgBIAEoCVIDRVRB'
    'EhYKBkFtb3VudBgCIAEoCVIGQW1vdW50');
