///
//  Generated code. Do not modify.
//  source: colodigits.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use colodigitIDDescriptor instead')
const ColodigitID$json = const {
  '1': 'ColodigitID',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ColodigitID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colodigitIDDescriptor = $convert.base64Decode('CgtDb2xvZGlnaXRJRBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use colodigitDescriptor instead')
const Colodigit$json = const {
  '1': 'Colodigit',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.ColodigitID', '9': 0, '10': 'id', '17': true},
    const {'1': 'digit', '3': 2, '4': 1, '5': 5, '10': 'digit'},
    const {'1': 'r', '3': 3, '4': 1, '5': 12, '10': 'r'},
    const {'1': 'g', '3': 4, '4': 1, '5': 12, '10': 'g'},
    const {'1': 'b', '3': 5, '4': 1, '5': 12, '10': 'b'},
  ],
  '8': const [
    const {'1': '_id'},
  ],
};

/// Descriptor for `Colodigit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colodigitDescriptor = $convert.base64Decode('CglDb2xvZGlnaXQSIQoCaWQYASABKAsyDC5Db2xvZGlnaXRJREgAUgJpZIgBARIUCgVkaWdpdBgCIAEoBVIFZGlnaXQSDAoBchgDIAEoDFIBchIMCgFnGAQgASgMUgFnEgwKAWIYBSABKAxSAWJCBQoDX2lk');
@$core.Deprecated('Use noParamIODescriptor instead')
const NoParamIO$json = const {
  '1': 'NoParamIO',
};

/// Descriptor for `NoParamIO`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noParamIODescriptor = $convert.base64Decode('CglOb1BhcmFtSU8=');
