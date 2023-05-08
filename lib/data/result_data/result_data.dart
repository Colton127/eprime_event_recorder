import 'package:freezed_annotation/freezed_annotation.dart';

import '../event_data/event_data.dart';

part 'result_data.freezed.dart';
part 'result_data.g.dart';

@unfreezed
class ResultData with _$ResultData {
  factory ResultData({
    required String startTime,
    required String endTime,
    required List<EventData> events,
  }) = _ResultData;

  factory ResultData.fromJson(Map<String, dynamic> json) => _$ResultDataFromJson(json);
}
