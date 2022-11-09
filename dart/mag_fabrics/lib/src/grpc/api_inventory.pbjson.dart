///
//  Generated code. Do not modify.
//  source: api_inventory.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory$json = const {
  '1': 'Inventory',
  '2': const [
    const {'1': 'ProductCode', '3': 1, '4': 1, '5': 9, '10': 'ProductCode'},
    const {'1': 'Rolls', '3': 2, '4': 3, '5': 11, '6': '.magnoliafabrics.Inventory.Roll', '10': 'Rolls'},
    const {'1': 'Total', '3': 3, '4': 1, '5': 9, '10': 'Total'},
    const {'1': 'PurchaseOrders', '3': 4, '4': 3, '5': 11, '6': '.magnoliafabrics.Inventory.PO', '10': 'PurchaseOrders'},
    const {'1': 'TotalOnPO', '3': 5, '4': 1, '5': 9, '10': 'TotalOnPO'},
    const {'1': 'OnBackorder', '3': 6, '4': 1, '5': 9, '10': 'OnBackorder'},
  ],
  '3': const [Inventory_Roll$json, Inventory_PO$json],
};

@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory_Roll$json = const {
  '1': 'Roll',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    const {'1': 'Quantity', '3': 2, '4': 1, '5': 9, '10': 'Quantity'},
  ],
};

@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory_PO$json = const {
  '1': 'PO',
  '2': const [
    const {'1': 'ETA', '3': 1, '4': 1, '5': 9, '10': 'ETA'},
    const {'1': 'Amount', '3': 2, '4': 1, '5': 9, '10': 'Amount'},
  ],
};

/// Descriptor for `Inventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inventoryDescriptor = $convert.base64Decode('CglJbnZlbnRvcnkSIAoLUHJvZHVjdENvZGUYASABKAlSC1Byb2R1Y3RDb2RlEjUKBVJvbGxzGAIgAygLMh8ubWFnbm9saWFmYWJyaWNzLkludmVudG9yeS5Sb2xsUgVSb2xscxIUCgVUb3RhbBgDIAEoCVIFVG90YWwSRQoOUHVyY2hhc2VPcmRlcnMYBCADKAsyHS5tYWdub2xpYWZhYnJpY3MuSW52ZW50b3J5LlBPUg5QdXJjaGFzZU9yZGVycxIcCglUb3RhbE9uUE8YBSABKAlSCVRvdGFsT25QTxIgCgtPbkJhY2tvcmRlchgGIAEoCVILT25CYWNrb3JkZXIaMgoEUm9sbBIOCgJJRBgBIAEoCVICSUQSGgoIUXVhbnRpdHkYAiABKAlSCFF1YW50aXR5Gi4KAlBPEhAKA0VUQRgBIAEoCVIDRVRBEhYKBkFtb3VudBgCIAEoCVIGQW1vdW50');
