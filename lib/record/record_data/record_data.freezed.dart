// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecordDataState _$RecordDataStateFromJson(Map<String, dynamic> json) {
  return _RecordDataState.fromJson(json);
}

/// @nodoc
mixin _$RecordDataState {
  RECORDINGSTATE get recordingState => throw _privateConstructorUsedError;
  int get recordedEvents => throw _privateConstructorUsedError;
  String get lastRecordedEvent => throw _privateConstructorUsedError;
  String get startedRecordingAt => throw _privateConstructorUsedError;
  String get stoppedRecordingAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordDataStateCopyWith<RecordDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordDataStateCopyWith<$Res> {
  factory $RecordDataStateCopyWith(
          RecordDataState value, $Res Function(RecordDataState) then) =
      _$RecordDataStateCopyWithImpl<$Res, RecordDataState>;
  @useResult
  $Res call(
      {RECORDINGSTATE recordingState,
      int recordedEvents,
      String lastRecordedEvent,
      String startedRecordingAt,
      String stoppedRecordingAt});
}

/// @nodoc
class _$RecordDataStateCopyWithImpl<$Res, $Val extends RecordDataState>
    implements $RecordDataStateCopyWith<$Res> {
  _$RecordDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordingState = null,
    Object? recordedEvents = null,
    Object? lastRecordedEvent = null,
    Object? startedRecordingAt = null,
    Object? stoppedRecordingAt = null,
  }) {
    return _then(_value.copyWith(
      recordingState: null == recordingState
          ? _value.recordingState
          : recordingState // ignore: cast_nullable_to_non_nullable
              as RECORDINGSTATE,
      recordedEvents: null == recordedEvents
          ? _value.recordedEvents
          : recordedEvents // ignore: cast_nullable_to_non_nullable
              as int,
      lastRecordedEvent: null == lastRecordedEvent
          ? _value.lastRecordedEvent
          : lastRecordedEvent // ignore: cast_nullable_to_non_nullable
              as String,
      startedRecordingAt: null == startedRecordingAt
          ? _value.startedRecordingAt
          : startedRecordingAt // ignore: cast_nullable_to_non_nullable
              as String,
      stoppedRecordingAt: null == stoppedRecordingAt
          ? _value.stoppedRecordingAt
          : stoppedRecordingAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecordDataStateCopyWith<$Res>
    implements $RecordDataStateCopyWith<$Res> {
  factory _$$_RecordDataStateCopyWith(
          _$_RecordDataState value, $Res Function(_$_RecordDataState) then) =
      __$$_RecordDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RECORDINGSTATE recordingState,
      int recordedEvents,
      String lastRecordedEvent,
      String startedRecordingAt,
      String stoppedRecordingAt});
}

/// @nodoc
class __$$_RecordDataStateCopyWithImpl<$Res>
    extends _$RecordDataStateCopyWithImpl<$Res, _$_RecordDataState>
    implements _$$_RecordDataStateCopyWith<$Res> {
  __$$_RecordDataStateCopyWithImpl(
      _$_RecordDataState _value, $Res Function(_$_RecordDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordingState = null,
    Object? recordedEvents = null,
    Object? lastRecordedEvent = null,
    Object? startedRecordingAt = null,
    Object? stoppedRecordingAt = null,
  }) {
    return _then(_$_RecordDataState(
      recordingState: null == recordingState
          ? _value.recordingState
          : recordingState // ignore: cast_nullable_to_non_nullable
              as RECORDINGSTATE,
      recordedEvents: null == recordedEvents
          ? _value.recordedEvents
          : recordedEvents // ignore: cast_nullable_to_non_nullable
              as int,
      lastRecordedEvent: null == lastRecordedEvent
          ? _value.lastRecordedEvent
          : lastRecordedEvent // ignore: cast_nullable_to_non_nullable
              as String,
      startedRecordingAt: null == startedRecordingAt
          ? _value.startedRecordingAt
          : startedRecordingAt // ignore: cast_nullable_to_non_nullable
              as String,
      stoppedRecordingAt: null == stoppedRecordingAt
          ? _value.stoppedRecordingAt
          : stoppedRecordingAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecordDataState implements _RecordDataState {
  const _$_RecordDataState(
      {this.recordingState = RECORDINGSTATE.idle,
      this.recordedEvents = 0,
      this.lastRecordedEvent = 'N/A',
      this.startedRecordingAt = 'N/A',
      this.stoppedRecordingAt = 'N/A'});

  factory _$_RecordDataState.fromJson(Map<String, dynamic> json) =>
      _$$_RecordDataStateFromJson(json);

  @override
  @JsonKey()
  final RECORDINGSTATE recordingState;
  @override
  @JsonKey()
  final int recordedEvents;
  @override
  @JsonKey()
  final String lastRecordedEvent;
  @override
  @JsonKey()
  final String startedRecordingAt;
  @override
  @JsonKey()
  final String stoppedRecordingAt;

  @override
  String toString() {
    return 'RecordDataState(recordingState: $recordingState, recordedEvents: $recordedEvents, lastRecordedEvent: $lastRecordedEvent, startedRecordingAt: $startedRecordingAt, stoppedRecordingAt: $stoppedRecordingAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordDataState &&
            (identical(other.recordingState, recordingState) ||
                other.recordingState == recordingState) &&
            (identical(other.recordedEvents, recordedEvents) ||
                other.recordedEvents == recordedEvents) &&
            (identical(other.lastRecordedEvent, lastRecordedEvent) ||
                other.lastRecordedEvent == lastRecordedEvent) &&
            (identical(other.startedRecordingAt, startedRecordingAt) ||
                other.startedRecordingAt == startedRecordingAt) &&
            (identical(other.stoppedRecordingAt, stoppedRecordingAt) ||
                other.stoppedRecordingAt == stoppedRecordingAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recordingState, recordedEvents,
      lastRecordedEvent, startedRecordingAt, stoppedRecordingAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordDataStateCopyWith<_$_RecordDataState> get copyWith =>
      __$$_RecordDataStateCopyWithImpl<_$_RecordDataState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecordDataStateToJson(
      this,
    );
  }
}

abstract class _RecordDataState implements RecordDataState {
  const factory _RecordDataState(
      {final RECORDINGSTATE recordingState,
      final int recordedEvents,
      final String lastRecordedEvent,
      final String startedRecordingAt,
      final String stoppedRecordingAt}) = _$_RecordDataState;

  factory _RecordDataState.fromJson(Map<String, dynamic> json) =
      _$_RecordDataState.fromJson;

  @override
  RECORDINGSTATE get recordingState;
  @override
  int get recordedEvents;
  @override
  String get lastRecordedEvent;
  @override
  String get startedRecordingAt;
  @override
  String get stoppedRecordingAt;
  @override
  @JsonKey(ignore: true)
  _$$_RecordDataStateCopyWith<_$_RecordDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
