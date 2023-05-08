import 'package:jiffy/jiffy.dart';

class RecordTimer {
  static final Stopwatch _stopWatch = Stopwatch();
  static void start() {
    _stopWatch.start();
  }

  static int getEventTime() {
    return _stopWatch.elapsedMilliseconds;
  }

  static void setOffsetTime() {
    _stopWatch.reset();
  }

  static String currentDateTimeString() => Jiffy().format('MMMM do yyyy, h:mm:ss a');
}
