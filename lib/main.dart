import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';
import 'data/results.dart';
import 'functions/timer.dart';
import 'interface/home.dart';
import 'settings.dart';

const Size windowSize = Size(590, 450);

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      RecordTimer.start();
      await windowManager.ensureInitialized();
      WindowOptions windowOptions = const WindowOptions(
        title: Settings.appTitle,
        size: windowSize,
        maximumSize: windowSize,
        minimumSize: windowSize,
        center: true,
        backgroundColor: Colors.transparent,
        skipTaskbar: false,
        titleBarStyle: TitleBarStyle.normal,
      );
      await windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
      });
      await Results.init();
      runApp(const ProviderScope(child: MaterialApp(debugShowCheckedModeBanner: false, title: 'E-Prime Event Recorder', home: Home())));
    },
    (error, stackTrace) {
      print('An error occurred: $error. Stack:\n$stackTrace');
    },
  );
}
