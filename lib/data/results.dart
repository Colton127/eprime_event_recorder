import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:eprime_event_recorder/data/event_data/event_data.dart';
import 'package:eprime_event_recorder/data/result_data/result_data.dart';
import 'package:eprime_event_recorder/functions/timer.dart';
import 'package:flutter/foundation.dart';
import 'package:jiffy/jiffy.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../settings.dart';

class Results {
  static late ResultData _resultData;
  static late final String resultDirectory;
  static bool _writingData = false;

  static Future<void> init() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    resultDirectory = p.join(appDocDir.path, Settings.directoryName);
    final rDirectory = Directory(resultDirectory);
    await rDirectory.create(recursive: true);
  }

  static void addEvent(String eventName) {
    final timeElapsedSinceOffset = RecordTimer.getEventTime();
    int lastEventTime = 0;
    if (_resultData.events.isNotEmpty) {
      lastEventTime = timeElapsedSinceOffset - _resultData.events.last.eventTime;
    }
    _resultData.events.add(EventData(eventName: eventName, eventTime: timeElapsedSinceOffset, timeElapsedSinceLastEvent: lastEventTime));
    print('Added event $eventName');
  }

  static void startWriting() async {
    _writingData = true;
    print('Starting Writing...');
    final String fileName = 'Recorded Events ${Jiffy().format('MM-d-yyyy h-mma')}.${Settings.eventFileExtension}';
    String filePath = p.join(resultDirectory, fileName);
    final String currentTime = RecordTimer.currentDateTimeString();
    _resultData = ResultData(startTime: currentTime, endTime: currentTime, events: []);
    while (_writingData) {
      await Future.delayed(const Duration(milliseconds: 250));
      if (_resultData.events.isNotEmpty) {
        _resultData = _resultData.copyWith(endTime: RecordTimer.currentDateTimeString());
        final writeResultData = WriteResultData(_resultData, filePath);
        await compute(writeResult, writeResultData);
      }
    }
  }

  static Future<void> writeResult(WriteResultData writeResultData) async {
    print('Writing results on isolate thread...');
    final currentLogFile = File(writeResultData.filePath);
    IOSink writer = currentLogFile.openWrite(mode: FileMode.write);
    String encodedJson = jsonEncode(writeResultData.resultData.toJson());
    writer.write(encodedJson);
    await writer.flush();
    await writer.close();
  }

  static void stopWriting() {
    _writingData = false;
  }
}

class WriteResultData {
  final ResultData resultData;
  final String filePath;
  WriteResultData(this.resultData, this.filePath);
}
