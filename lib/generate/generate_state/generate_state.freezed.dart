// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenerateState _$GenerateStateFromJson(Map<String, dynamic> json) {
  return _GenerateState.fromJson(json);
}

/// @nodoc
mixin _$GenerateState {
  String get selectedFileLocation => throw _privateConstructorUsedError;
  String get recordingStartedAt => throw _privateConstructorUsedError;
  String get recordingEndedAt => throw _privateConstructorUsedError;
  String get eventsRecorded => throw _privateConstructorUsedError;
  bool get generateButtonEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerateStateCopyWith<GenerateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateStateCopyWith<$Res> {
  factory $GenerateStateCopyWith(
          GenerateState value, $Res Function(GenerateState) then) =
      _$GenerateStateCopyWithImpl<$Res, GenerateState>;
  @useResult
  $Res call(
      {String selectedFileLocation,
      String recordingStartedAt,
      String recordingEndedAt,
      String eventsRecorded,
      bool generateButtonEnabled});
}

/// @nodoc
class _$GenerateStateCopyWithImpl<$Res, $Val extends GenerateState>
    implements $GenerateStateCopyWith<$Res> {
  _$GenerateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFileLocation = null,
    Object? recordingStartedAt = null,
    Object? recordingEndedAt = null,
    Object? eventsRecorded = null,
    Object? generateButtonEnabled = null,
  }) {
    return _then(_value.copyWith(
      selectedFileLocation: null == selectedFileLocation
          ? _value.selectedFileLocation
          : selectedFileLocation // ignore: cast_nullable_to_non_nullable
              as String,
      recordingStartedAt: null == recordingStartedAt
          ? _value.recordingStartedAt
          : recordingStartedAt // ignore: cast_nullable_to_non_nullable
              as String,
      recordingEndedAt: null == recordingEndedAt
          ? _value.recordingEndedAt
          : recordingEndedAt // ignore: cast_nullable_to_non_nullable
              as String,
      eventsRecorded: null == eventsRecorded
          ? _value.eventsRecorded
          : eventsRecorded // ignore: cast_nullable_to_non_nullable
              as String,
      generateButtonEnabled: null == generateButtonEnabled
          ? _value.generateButtonEnabled
          : generateButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenerateStateCopyWith<$Res>
    implements $GenerateStateCopyWith<$Res> {
  factory _$$_GenerateStateCopyWith(
          _$_GenerateState value, $Res Function(_$_GenerateState) then) =
      __$$_GenerateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String selectedFileLocation,
      String recordingStartedAt,
      String recordingEndedAt,
      String eventsRecorded,
      bool generateButtonEnabled});
}

/// @nodoc
class __$$_GenerateStateCopyWithImpl<$Res>
    extends _$GenerateStateCopyWithImpl<$Res, _$_GenerateState>
    implements _$$_GenerateStateCopyWith<$Res> {
  __$$_GenerateStateCopyWithImpl(
      _$_GenerateState _value, $Res Function(_$_GenerateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFileLocation = null,
    Object? recordingStartedAt = null,
    Object? recordingEndedAt = null,
    Object? eventsRecorded = null,
    Object? generateButtonEnabled = null,
  }) {
    return _then(_$_GenerateState(
      selectedFileLocation: null == selectedFileLocation
          ? _value.selectedFileLocation
          : selectedFileLocation // ignore: cast_nullable_to_non_nullable
              as String,
      recordingStartedAt: null == recordingStartedAt
          ? _value.recordingStartedAt
          : recordingStartedAt // ignore: cast_nullable_to_non_nullable
              as String,
      recordingEndedAt: null == recordingEndedAt
          ? _value.recordingEndedAt
          : recordingEndedAt // ignore: cast_nullable_to_non_nullable
              as String,
      eventsRecorded: null == eventsRecorded
          ? _value.eventsRecorded
          : eventsRecorded // ignore: cast_nullable_to_non_nullable
              as String,
      generateButtonEnabled: null == generateButtonEnabled
          ? _value.generateButtonEnabled
          : generateButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerateState implements _GenerateState {
  const _$_GenerateState(
      {this.selectedFileLocation = 'Select a file...',
      this.recordingStartedAt = 'N/A',
      this.recordingEndedAt = 'N/A',
      this.eventsRecorded = 'N/A',
      this.generateButtonEnabled = false});

  factory _$_GenerateState.fromJson(Map<String, dynamic> json) =>
      _$$_GenerateStateFromJson(json);

  @override
  @JsonKey()
  final String selectedFileLocation;
  @override
  @JsonKey()
  final String recordingStartedAt;
  @override
  @JsonKey()
  final String recordingEndedAt;
  @override
  @JsonKey()
  final String eventsRecorded;
  @override
  @JsonKey()
  final bool generateButtonEnabled;

  @override
  String toString() {
    return 'GenerateState(selectedFileLocation: $selectedFileLocation, recordingStartedAt: $recordingStartedAt, recordingEndedAt: $recordingEndedAt, eventsRecorded: $eventsRecorded, generateButtonEnabled: $generateButtonEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateState &&
            (identical(other.selectedFileLocation, selectedFileLocation) ||
                other.selectedFileLocation == selectedFileLocation) &&
            (identical(other.recordingStartedAt, recordingStartedAt) ||
                other.recordingStartedAt == recordingStartedAt) &&
            (identical(other.recordingEndedAt, recordingEndedAt) ||
                other.recordingEndedAt == recordingEndedAt) &&
            (identical(other.eventsRecorded, eventsRecorded) ||
                other.eventsRecorded == eventsRecorded) &&
            (identical(other.generateButtonEnabled, generateButtonEnabled) ||
                other.generateButtonEnabled == generateButtonEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedFileLocation,
      recordingStartedAt,
      recordingEndedAt,
      eventsRecorded,
      generateButtonEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateStateCopyWith<_$_GenerateState> get copyWith =>
      __$$_GenerateStateCopyWithImpl<_$_GenerateState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerateStateToJson(
      this,
    );
  }
}

abstract class _GenerateState implements GenerateState {
  const factory _GenerateState(
      {final String selectedFileLocation,
      final String recordingStartedAt,
      final String recordingEndedAt,
      final String eventsRecorded,
      final bool generateButtonEnabled}) = _$_GenerateState;

  factory _GenerateState.fromJson(Map<String, dynamic> json) =
      _$_GenerateState.fromJson;

  @override
  String get selectedFileLocation;
  @override
  String get recordingStartedAt;
  @override
  String get recordingEndedAt;
  @override
  String get eventsRecorded;
  @override
  bool get generateButtonEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_GenerateStateCopyWith<_$_GenerateState> get copyWith =>
      throw _privateConstructorUsedError;
}
