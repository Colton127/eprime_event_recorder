import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:file_selector/file_selector.dart';

import '../generate/generate.dart';
import '../settings.dart';

class GeneratePage extends ConsumerWidget {
  const GeneratePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: const [
          SelectFileRow(),
          EventOffSetTimeRow(),
          EventFileInformation(),
          GenerateButton(),
        ],
      ),
    );
  }
}

class SelectFileRow extends ConsumerStatefulWidget {
  const SelectFileRow({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SelectFileRowState();
}

class SelectFileRowState extends ConsumerState<SelectFileRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Row(
          children: const [
            Expanded(
              child: FileLocationTextField(),
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(height: 50, child: SelectFileLocationButton())
          ],
        ),
      ),
    );
  }
}

class FileLocationTextField extends ConsumerWidget {
  const FileLocationTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      controller: ref.read(generateProvider.notifier).filePathTextController,
      enabled: false,
      decoration: const InputDecoration(border: OutlineInputBorder()),
    );
  }
}

class SelectFileLocationButton extends ConsumerWidget {
  const SelectFileLocationButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        onPressed: () async {
          const XTypeGroup typeGroup = XTypeGroup(
            label: 'EventFile',
            extensions: <String>[Settings.eventFileExtension],
          );
          final XFile? file = await openFile(acceptedTypeGroups: <XTypeGroup>[typeGroup]);
          if (file != null) {
            ref.read(generateProvider.notifier).selectFile(file.path);
          }
        },
        child: const Text('Browse...'));
  }
}

class EventOffSetTimeRow extends ConsumerWidget {
  const EventOffSetTimeRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Row(
          children: [
            const Text('Event time in EEGLAB:'),
            const SizedBox(
              width: 5,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: TextFormField(
                controller: ref.read(generateProvider.notifier).offetTimeTextController,
                enabled: true,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text('Seconds or Milliseconds'),
          ],
        ),
      ),
    );
  }
}

class EventFileInformation extends ConsumerWidget {
  const EventFileInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generaterState = ref.watch(generateProvider);
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all()),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              const Text(
                'Imported File Information',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Total Events: ${generaterState.eventsRecorded}',
                style: const TextStyle(),
              ),
              Text(
                'Recording Start Time: ${generaterState.recordingStartedAt}',
                style: const TextStyle(),
              ),
              Text(
                'Recording End Time: ${generaterState.recordingEndedAt}',
                style: const TextStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GenerateButton extends ConsumerWidget {
  const GenerateButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool generateButtonEnabled = ref.watch(generateProvider.select((value) => value.generateButtonEnabled));
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
              onPressed: !generateButtonEnabled
                  ? null
                  : () async {
                      int? eegLabTime = ref.read(generateProvider.notifier).eegLabEventTime();
                      if (eegLabTime == null) {
                        return;
                      }
                      const XTypeGroup typeGroup = XTypeGroup(
                        label: 'EEGLAB Events',
                        extensions: <String>['.txt'],
                      );
                      final String? fPath = await getSavePath(acceptedTypeGroups: <XTypeGroup>[typeGroup]);
                      if (fPath != null) {
                        ref.read(generateProvider.notifier).saveFile(fPath);
                      }
                    },
              child: const Text('Generate Events'))),
    );
  }
}
