// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultData _$$_ResultDataFromJson(Map<String, dynamic> json) =>
    _$_ResultData(
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      events: (json['events'] as List<dynamic>)
          .map((e) => EventData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultDataToJson(_$_ResultData instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'events': instance.events,
    };
