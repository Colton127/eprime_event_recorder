import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_state.freezed.dart';
part 'generate_state.g.dart';

@freezed
class GenerateState with _$GenerateState {
  const factory GenerateState({
    @Default('Select a file...') String selectedFileLocation,
    @Default('N/A') String recordingStartedAt,
    @Default('N/A') String recordingEndedAt,
    @Default('N/A') String eventsRecorded,
    @Default(false) bool generateButtonEnabled,
  }) = _GenerateState;

  factory GenerateState.fromJson(Map<String, dynamic> json) => _$GenerateStateFromJson(json);
}
