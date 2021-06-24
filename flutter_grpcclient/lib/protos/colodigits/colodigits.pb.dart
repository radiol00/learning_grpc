///
//  Generated code. Do not modify.
//  source: colodigits.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ColodigitID extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ColodigitID', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  ColodigitID._() : super();
  factory ColodigitID({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory ColodigitID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ColodigitID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ColodigitID clone() => ColodigitID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ColodigitID copyWith(void Function(ColodigitID) updates) => super.copyWith((message) => updates(message as ColodigitID)) as ColodigitID; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ColodigitID create() => ColodigitID._();
  ColodigitID createEmptyInstance() => create();
  static $pb.PbList<ColodigitID> createRepeated() => $pb.PbList<ColodigitID>();
  @$core.pragma('dart2js:noInline')
  static ColodigitID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ColodigitID>(create);
  static ColodigitID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class Colodigit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Colodigit', createEmptyInstance: create)
    ..aOM<ColodigitID>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', subBuilder: ColodigitID.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'digit', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'r', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'g', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'b', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Colodigit._() : super();
  factory Colodigit({
    ColodigitID? id,
    $core.int? digit,
    $core.List<$core.int>? r,
    $core.List<$core.int>? g,
    $core.List<$core.int>? b,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (digit != null) {
      _result.digit = digit;
    }
    if (r != null) {
      _result.r = r;
    }
    if (g != null) {
      _result.g = g;
    }
    if (b != null) {
      _result.b = b;
    }
    return _result;
  }
  factory Colodigit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Colodigit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Colodigit clone() => Colodigit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Colodigit copyWith(void Function(Colodigit) updates) => super.copyWith((message) => updates(message as Colodigit)) as Colodigit; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Colodigit create() => Colodigit._();
  Colodigit createEmptyInstance() => create();
  static $pb.PbList<Colodigit> createRepeated() => $pb.PbList<Colodigit>();
  @$core.pragma('dart2js:noInline')
  static Colodigit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Colodigit>(create);
  static Colodigit? _defaultInstance;

  @$pb.TagNumber(1)
  ColodigitID get id => $_getN(0);
  @$pb.TagNumber(1)
  set id(ColodigitID v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  ColodigitID ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get digit => $_getIZ(1);
  @$pb.TagNumber(2)
  set digit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDigit() => $_has(1);
  @$pb.TagNumber(2)
  void clearDigit() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get r => $_getN(2);
  @$pb.TagNumber(3)
  set r($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasR() => $_has(2);
  @$pb.TagNumber(3)
  void clearR() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get g => $_getN(3);
  @$pb.TagNumber(4)
  set g($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasG() => $_has(3);
  @$pb.TagNumber(4)
  void clearG() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get b => $_getN(4);
  @$pb.TagNumber(5)
  set b($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasB() => $_has(4);
  @$pb.TagNumber(5)
  void clearB() => clearField(5);
}

class NoParamIO extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NoParamIO', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  NoParamIO._() : super();
  factory NoParamIO() => create();
  factory NoParamIO.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoParamIO.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoParamIO clone() => NoParamIO()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoParamIO copyWith(void Function(NoParamIO) updates) => super.copyWith((message) => updates(message as NoParamIO)) as NoParamIO; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NoParamIO create() => NoParamIO._();
  NoParamIO createEmptyInstance() => create();
  static $pb.PbList<NoParamIO> createRepeated() => $pb.PbList<NoParamIO>();
  @$core.pragma('dart2js:noInline')
  static NoParamIO getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoParamIO>(create);
  static NoParamIO? _defaultInstance;
}

