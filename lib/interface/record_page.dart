import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../record/record.dart';

class RecordPage extends ConsumerWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: const [
        Align(
          alignment: Alignment.center,
          child: RecordButton(),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: RecordingDataText(),
            )),
      ],
    );
  }
}

class RecordButton extends ConsumerWidget {
  const RecordButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recording = ref.watch(recordNotifierProvider.select((value) => value.recordingState));
    late final Color color;
    if (recording == RECORDINGSTATE.recording) {
      color = Colors.red;
    } else if (recording == RECORDINGSTATE.idle) {
      color = Colors.grey;
    } else if (recording == RECORDINGSTATE.complete) {
      color = Colors.green;
    }

    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: color, width: 3)),
      child: Material(
        color: Colors.transparent,
        child: IconButton(
          splashRadius: 60,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          icon: const Center(child: Icon(Icons.podcasts, size: 100)),
          onPressed: () {},
          iconSize: 100,
          color: color,
        ),
      ),
    );
  }
}

class RecordingDataText extends ConsumerWidget {
  const RecordingDataText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recordingInfo = ref.watch(recordNotifierProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Started Recording At: ${recordingInfo.startedRecordingAt}',
        ),
        Text(
          'Stopped Recording At: ${recordingInfo.stoppedRecordingAt}',
        ),
        Text(
          'Recorded Events: ${recordingInfo.recordedEvents}',
        ),
        Text(
          'Last Recorded Event: ${recordingInfo.lastRecordedEvent}',
        ),
      ],
    );
  }
}

class EventsRecorded extends ConsumerWidget {
  const EventsRecorded({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int totalEventsRecorded = ref.watch(recordNotifierProvider.select((value) => value.recordedEvents));
    return Text(
      'Recorded Events: $totalEventsRecorded',
      style: const TextStyle(color: Colors.black),
    );
  }
}

class LastRecordedEvent extends ConsumerWidget {
  const LastRecordedEvent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String lastRecordedEvent = ref.watch(recordNotifierProvider.select((value) => value.lastRecordedEvent));
    return Text(
      'Last Recorded Event: $lastRecordedEvent',
      style: const TextStyle(color: Colors.black),
    );
  }
}

class StartedRecordingAt extends ConsumerWidget {
  const StartedRecordingAt({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String startedRecordingAt = ref.watch(recordNotifierProvider.select((value) => value.startedRecordingAt));
    return Text(
      'Started Recording At: $startedRecordingAt',
      style: const TextStyle(color: Colors.black),
    );
  }
}
