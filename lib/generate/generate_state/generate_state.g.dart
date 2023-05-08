// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerateState _$$_GenerateStateFromJson(Map<String, dynamic> json) =>
    _$_GenerateState(
      selectedFileLocation:
          json['selectedFileLocation'] as String? ?? 'Select a file...',
      recordingStartedAt: json['recordingStartedAt'] as String? ?? 'N/A',
      recordingEndedAt: json['recordingEndedAt'] as String? ?? 'N/A',
      eventsRecorded: json['eventsRecorded'] as String? ?? 'N/A',
      generateButtonEnabled: json['generateButtonEnabled'] as bool? ?? false,
    );

Map<String, dynamic> _$$_GenerateStateToJson(_$_GenerateState instance) =>
    <String, dynamic>{
      'selectedFileLocation': instance.selectedFileLocation,
      'recordingStartedAt': instance.recordingStartedAt,
      'recordingEndedAt': instance.recordingEndedAt,
      'eventsRecorded': instance.eventsRecorded,
      'generateButtonEnabled': instance.generateButtonEnabled,
    };
