import 'dart:convert';
import 'dart:io';

import 'package:eprime_event_recorder/data/result_data/result_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'generate_state/generate_state.dart';

final generateProvider = StateNotifierProvider<GenerateNotifier, GenerateState>((ref) {
  return GenerateNotifier(ref);
});

class GenerateNotifier extends StateNotifier<GenerateState> {
  final Ref ref;
  GenerateNotifier(this.ref) : super(const GenerateState());

  final TextEditingController filePathTextController = TextEditingController(text: 'Select a file...');
  final TextEditingController offetTimeTextController = TextEditingController();
  late ResultData decodedResultData;

  void selectFile(String filePath) async {
    filePathTextController.text = filePath;
    final selectedFile = File(filePath);
    final String eventFileContents = await selectedFile.readAsString();
    decodedResultData = ResultData.fromJson(jsonDecode(eventFileContents));

    state = state.copyWith(
        generateButtonEnabled: true,
        recordingStartedAt: decodedResultData.startTime,
        recordingEndedAt: decodedResultData.endTime,
        eventsRecorded: decodedResultData.events.length.toString());
  }

  int? eegLabEventTime() {
    try {
      final String currentInput = offetTimeTextController.text.trim();
      double? getTime = double.tryParse(currentInput);
      if (getTime != null) {
        if (currentInput.contains('.')) {
          getTime = getTime * 1000;
        }
        return getTime.toInt();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  Future<void> saveFile(String filePath) async {
    final logFile = File('$filePath.txt');
    IOSink writer = logFile.openWrite(mode: FileMode.write);
    writer.write('type latency');
    for (final erp in decodedResultData.events) {
      final int realEventTime = erp.eventTime + eegLabEventTime()!;
      writer.write('\n${erp.eventName} $realEventTime');
    }
    await writer.flush();
    writer.close();
  }
}
