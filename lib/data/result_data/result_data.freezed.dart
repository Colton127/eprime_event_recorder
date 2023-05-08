// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultData _$ResultDataFromJson(Map<String, dynamic> json) {
  return _ResultData.fromJson(json);
}

/// @nodoc
mixin _$ResultData {
  String get startTime => throw _privateConstructorUsedError;
  set startTime(String value) => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  set endTime(String value) => throw _privateConstructorUsedError;
  List<EventData> get events => throw _privateConstructorUsedError;
  set events(List<EventData> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultDataCopyWith<ResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataCopyWith<$Res> {
  factory $ResultDataCopyWith(
          ResultData value, $Res Function(ResultData) then) =
      _$ResultDataCopyWithImpl<$Res, ResultData>;
  @useResult
  $Res call({String startTime, String endTime, List<EventData> events});
}

/// @nodoc
class _$ResultDataCopyWithImpl<$Res, $Val extends ResultData>
    implements $ResultDataCopyWith<$Res> {
  _$ResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultDataCopyWith<$Res>
    implements $ResultDataCopyWith<$Res> {
  factory _$$_ResultDataCopyWith(
          _$_ResultData value, $Res Function(_$_ResultData) then) =
      __$$_ResultDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startTime, String endTime, List<EventData> events});
}

/// @nodoc
class __$$_ResultDataCopyWithImpl<$Res>
    extends _$ResultDataCopyWithImpl<$Res, _$_ResultData>
    implements _$$_ResultDataCopyWith<$Res> {
  __$$_ResultDataCopyWithImpl(
      _$_ResultData _value, $Res Function(_$_ResultData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? events = null,
  }) {
    return _then(_$_ResultData(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultData implements _ResultData {
  _$_ResultData(
      {required this.startTime, required this.endTime, required this.events});

  factory _$_ResultData.fromJson(Map<String, dynamic> json) =>
      _$$_ResultDataFromJson(json);

  @override
  String startTime;
  @override
  String endTime;
  @override
  List<EventData> events;

  @override
  String toString() {
    return 'ResultData(startTime: $startTime, endTime: $endTime, events: $events)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultDataCopyWith<_$_ResultData> get copyWith =>
      __$$_ResultDataCopyWithImpl<_$_ResultData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultDataToJson(
      this,
    );
  }
}

abstract class _ResultData implements ResultData {
  factory _ResultData(
      {required String startTime,
      required String endTime,
      required List<EventData> events}) = _$_ResultData;

  factory _ResultData.fromJson(Map<String, dynamic> json) =
      _$_ResultData.fromJson;

  @override
  String get startTime;
  set startTime(String value);
  @override
  String get endTime;
  set endTime(String value);
  @override
  List<EventData> get events;
  set events(List<EventData> value);
  @override
  @JsonKey(ignore: true)
  _$$_ResultDataCopyWith<_$_ResultData> get copyWith =>
      throw _privateConstructorUsedError;
}
