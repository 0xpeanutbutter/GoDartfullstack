///
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'Id', '3': 1, '4': 1, '5': 9, '10': 'Id'},
    const {'1': 'UID', '3': 2, '4': 1, '5': 9, '10': 'UID'},
    const {'1': 'Name', '3': 3, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Address', '3': 4, '4': 1, '5': 9, '10': 'Address'},
    const {'1': 'PhoneNumber', '3': 5, '4': 1, '5': 9, '10': 'PhoneNumber'},
    const {'1': 'UserType', '3': 6, '4': 1, '5': 9, '10': 'UserType'},
    const {'1': 'Email', '3': 7, '4': 1, '5': 9, '10': 'Email'},
    const {'1': 'PendingId', '3': 8, '4': 3, '5': 11, '6': '.pb.User.PendingIdEntry', '10': 'PendingId'},
    const {'1': 'RequestedId', '3': 9, '4': 3, '5': 11, '6': '.pb.User.RequestedIdEntry', '10': 'RequestedId'},
    const {'1': 'ConnectedId', '3': 10, '4': 3, '5': 11, '6': '.pb.User.ConnectedIdEntry', '10': 'ConnectedId'},
  ],
  '3': const [User_PendingIdEntry$json, User_RequestedIdEntry$json, User_ConnectedIdEntry$json],
};

@$core.Deprecated('Use userDescriptor instead')
const User_PendingIdEntry$json = const {
  '1': 'PendingIdEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use userDescriptor instead')
const User_RequestedIdEntry$json = const {
  '1': 'RequestedIdEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use userDescriptor instead')
const User_ConnectedIdEntry$json = const {
  '1': 'ConnectedIdEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAklkGAEgASgJUgJJZBIQCgNVSUQYAiABKAlSA1VJRBISCgROYW1lGAMgASgJUgROYW1lEhgKB0FkZHJlc3MYBCABKAlSB0FkZHJlc3MSIAoLUGhvbmVOdW1iZXIYBSABKAlSC1Bob25lTnVtYmVyEhoKCFVzZXJUeXBlGAYgASgJUghVc2VyVHlwZRIUCgVFbWFpbBgHIAEoCVIFRW1haWwSNQoJUGVuZGluZ0lkGAggAygLMhcucGIuVXNlci5QZW5kaW5nSWRFbnRyeVIJUGVuZGluZ0lkEjsKC1JlcXVlc3RlZElkGAkgAygLMhkucGIuVXNlci5SZXF1ZXN0ZWRJZEVudHJ5UgtSZXF1ZXN0ZWRJZBI7CgtDb25uZWN0ZWRJZBgKIAMoCzIZLnBiLlVzZXIuQ29ubmVjdGVkSWRFbnRyeVILQ29ubmVjdGVkSWQaPAoOUGVuZGluZ0lkRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAhSBXZhbHVlOgI4ARo+ChBSZXF1ZXN0ZWRJZEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgIUgV2YWx1ZToCOAEaPgoQQ29ubmVjdGVkSWRFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCFIFdmFsdWU6AjgB');
@$core.Deprecated('Use utilDescriptor instead')
const Util$json = const {
  '1': 'Util',
  '2': const [
    const {'1': 'UID', '3': 1, '4': 1, '5': 9, '10': 'UID'},
    const {'1': 'Id', '3': 2, '4': 1, '5': 9, '10': 'Id'},
    const {'1': 'user', '3': 3, '4': 1, '5': 11, '6': '.pb.User', '10': 'user'},
  ],
};

/// Descriptor for `Util`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List utilDescriptor = $convert.base64Decode('CgRVdGlsEhAKA1VJRBgBIAEoCVIDVUlEEg4KAklkGAIgASgJUgJJZBIcCgR1c2VyGAMgASgLMggucGIuVXNlclIEdXNlcg==');
@$core.Deprecated('Use statusSuccessfulDescriptor instead')
const StatusSuccessful$json = const {
  '1': 'StatusSuccessful',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `StatusSuccessful`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusSuccessfulDescriptor = $convert.base64Decode('ChBTdGF0dXNTdWNjZXNzZnVsEhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');
