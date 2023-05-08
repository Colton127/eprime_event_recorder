// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventData _$$_EventDataFromJson(Map<String, dynamic> json) => _$_EventData(
      eventName: json['eventName'] as String,
      eventTime: json['eventTime'] as int,
      timeElapsedSinceLastEvent: json['timeElapsedSinceLastEvent'] as int,
    );

Map<String, dynamic> _$$_EventDataToJson(_$_EventData instance) =>
    <String, dynamic>{
      'eventName': instance.eventName,
      'eventTime': instance.eventTime,
      'timeElapsedSinceLastEvent': instance.timeElapsedSinceLastEvent,
    };
