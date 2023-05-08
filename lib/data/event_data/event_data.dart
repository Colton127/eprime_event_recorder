import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_data.freezed.dart';
part 'event_data.g.dart';

@freezed
class EventData with _$EventData {
  const factory EventData({required final String eventName, required final int eventTime, required final int timeElapsedSinceLastEvent}) = _EventData;

  factory EventData.fromJson(Map<String, dynamic> json) => _$EventDataFromJson(json);
}
