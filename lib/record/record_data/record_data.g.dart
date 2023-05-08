// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecordDataState _$$_RecordDataStateFromJson(Map<String, dynamic> json) =>
    _$_RecordDataState(
      recordingState: $enumDecodeNullable(
              _$RECORDINGSTATEEnumMap, json['recordingState']) ??
          RECORDINGSTATE.idle,
      recordedEvents: json['recordedEvents'] as int? ?? 0,
      lastRecordedEvent: json['lastRecordedEvent'] as String? ?? 'N/A',
      startedRecordingAt: json['startedRecordingAt'] as String? ?? 'N/A',
      stoppedRecordingAt: json['stoppedRecordingAt'] as String? ?? 'N/A',
    );

Map<String, dynamic> _$$_RecordDataStateToJson(_$_RecordDataState instance) =>
    <String, dynamic>{
      'recordingState': _$RECORDINGSTATEEnumMap[instance.recordingState]!,
      'recordedEvents': instance.recordedEvents,
      'lastRecordedEvent': instance.lastRecordedEvent,
      'startedRecordingAt': instance.startedRecordingAt,
      'stoppedRecordingAt': instance.stoppedRecordingAt,
    };

const _$RECORDINGSTATEEnumMap = {
  RECORDINGSTATE.idle: 'idle',
  RECORDINGSTATE.recording: 'recording',
  RECORDINGSTATE.complete: 'complete',
};
