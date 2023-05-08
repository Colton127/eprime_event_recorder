import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/results.dart';
import '../functions/timer.dart';
import 'record_data/record_data.dart';

enum RECORDINGSTATE { idle, recording, complete }

final recordNotifierProvider = StateNotifierProvider<RecordNotifier, RecordDataState>((ref) {
  final recordNotifier = RecordNotifier(ref);
  recordNotifier.init();
  return recordNotifier;
});

class RecordNotifier extends StateNotifier<RecordDataState> {
  RecordNotifier(this.ref) : super(const RecordDataState());
  final Ref ref;
  List<Socket> clientList = [];
  late final ServerSocket server;

  void init() async {
    try {
      server = await ServerSocket.bind(InternetAddress.anyIPv4, 1337);
      server.listen((client) {
        clientList.add(client);
        handleConnection(client);
      });
    } catch (e) {
      throw ('Error starting recording: $e');
    }
  }

  Future<void> startRecording() async {
    RecordTimer.setOffsetTime();
    Results.startWriting();
    state = state.copyWith(recordingState: RECORDINGSTATE.recording);
    state = state.copyWith(startedRecordingAt: RecordTimer.currentDateTimeString());
    state = state.copyWith(stoppedRecordingAt: 'N/A');
    state = state.copyWith(recordedEvents: 0);
    state = state.copyWith(lastRecordedEvent: 'N/A');
  }

  Future<void> stopRecording() async {
    Results.stopWriting();
    state = state.copyWith(stoppedRecordingAt: RecordTimer.currentDateTimeString());
    state = state.copyWith(recordingState: RECORDINGSTATE.complete);
  }

  void handleConnection(Socket client) {
    client.listen(
      (Uint8List data) async {
        final String message = String.fromCharCodes(data).trim();
        if (message.toLowerCase() == 'startrecord') {
          startRecording();
        } else {
          if (state.recordingState == RECORDINGSTATE.recording) {
            Results.addEvent(message);
            state = state.copyWith(lastRecordedEvent: message);
            state = state.copyWith(recordedEvents: state.recordedEvents + 1);
          }
        }
      },
      onError: (error) {
        stopRecording();
        client.close();
        clientList.remove(client);
      },
      onDone: () {
        stopRecording();
        client.close();
        clientList.remove(client);
      },
    );
  }
}
