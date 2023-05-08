import 'package:freezed_annotation/freezed_annotation.dart';

import '../record.dart';

part 'record_data.freezed.dart';
part 'record_data.g.dart';

@freezed
class RecordDataState with _$RecordDataState {
  const factory RecordDataState({
    @Default(RECORDINGSTATE.idle) RECORDINGSTATE recordingState,
    @Default(0) int recordedEvents,
    @Default('N/A') String lastRecordedEvent,
    @Default('N/A') String startedRecordingAt,
    @Default('N/A') String stoppedRecordingAt,
  }) = _RecordDataState;

  factory RecordDataState.fromJson(Map<String, dynamic> json) => _$RecordDataStateFromJson(json);
}
