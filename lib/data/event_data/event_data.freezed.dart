// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventData _$EventDataFromJson(Map<String, dynamic> json) {
  return _EventData.fromJson(json);
}

/// @nodoc
mixin _$EventData {
  String get eventName => throw _privateConstructorUsedError;
  int get eventTime => throw _privateConstructorUsedError;
  int get timeElapsedSinceLastEvent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDataCopyWith<EventData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDataCopyWith<$Res> {
  factory $EventDataCopyWith(EventData value, $Res Function(EventData) then) =
      _$EventDataCopyWithImpl<$Res, EventData>;
  @useResult
  $Res call({String eventName, int eventTime, int timeElapsedSinceLastEvent});
}

/// @nodoc
class _$EventDataCopyWithImpl<$Res, $Val extends EventData>
    implements $EventDataCopyWith<$Res> {
  _$EventDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventName = null,
    Object? eventTime = null,
    Object? timeElapsedSinceLastEvent = null,
  }) {
    return _then(_value.copyWith(
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventTime: null == eventTime
          ? _value.eventTime
          : eventTime // ignore: cast_nullable_to_non_nullable
              as int,
      timeElapsedSinceLastEvent: null == timeElapsedSinceLastEvent
          ? _value.timeElapsedSinceLastEvent
          : timeElapsedSinceLastEvent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventDataCopyWith<$Res> implements $EventDataCopyWith<$Res> {
  factory _$$_EventDataCopyWith(
          _$_EventData value, $Res Function(_$_EventData) then) =
      __$$_EventDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventName, int eventTime, int timeElapsedSinceLastEvent});
}

/// @nodoc
class __$$_EventDataCopyWithImpl<$Res>
    extends _$EventDataCopyWithImpl<$Res, _$_EventData>
    implements _$$_EventDataCopyWith<$Res> {
  __$$_EventDataCopyWithImpl(
      _$_EventData _value, $Res Function(_$_EventData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventName = null,
    Object? eventTime = null,
    Object? timeElapsedSinceLastEvent = null,
  }) {
    return _then(_$_EventData(
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventTime: null == eventTime
          ? _value.eventTime
          : eventTime // ignore: cast_nullable_to_non_nullable
              as int,
      timeElapsedSinceLastEvent: null == timeElapsedSinceLastEvent
          ? _value.timeElapsedSinceLastEvent
          : timeElapsedSinceLastEvent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventData implements _EventData {
  const _$_EventData(
      {required this.eventName,
      required this.eventTime,
      required this.timeElapsedSinceLastEvent});

  factory _$_EventData.fromJson(Map<String, dynamic> json) =>
      _$$_EventDataFromJson(json);

  @override
  final String eventName;
  @override
  final int eventTime;
  @override
  final int timeElapsedSinceLastEvent;

  @override
  String toString() {
    return 'EventData(eventName: $eventName, eventTime: $eventTime, timeElapsedSinceLastEvent: $timeElapsedSinceLastEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventData &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventTime, eventTime) ||
                other.eventTime == eventTime) &&
            (identical(other.timeElapsedSinceLastEvent,
                    timeElapsedSinceLastEvent) ||
                other.timeElapsedSinceLastEvent == timeElapsedSinceLastEvent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, eventName, eventTime, timeElapsedSinceLastEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDataCopyWith<_$_EventData> get copyWith =>
      __$$_EventDataCopyWithImpl<_$_EventData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDataToJson(
      this,
    );
  }
}

abstract class _EventData implements EventData {
  const factory _EventData(
      {required final String eventName,
      required final int eventTime,
      required final int timeElapsedSinceLastEvent}) = _$_EventData;

  factory _EventData.fromJson(Map<String, dynamic> json) =
      _$_EventData.fromJson;

  @override
  String get eventName;
  @override
  int get eventTime;
  @override
  int get timeElapsedSinceLastEvent;
  @override
  @JsonKey(ignore: true)
  _$$_EventDataCopyWith<_$_EventData> get copyWith =>
      throw _privateConstructorUsedError;
}
