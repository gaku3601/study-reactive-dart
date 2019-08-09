import 'dart:async';

var controller = StreamController<String>();

void main() {
  // listenさせます(購読する)
  koudokusya1();
  koudokusya2();

  // streamを流します。(購読している人へ新聞配達する感じ)
  controller.sink.add('新聞だょ〜(´・ω・｀)b');
  controller.sink.add('今日の夕刊新聞だょ〜(´・ω・｀)b');
}

void koudokusya1() {
  controller.stream.listen((data){
    print('購読している人1');
    print(data);
  });
}

void koudokusya2() {
  controller.stream.listen((data){
    print('購読している人2');
    print(data);
  });
}

/* output
Unhandled exception:
Bad state: Stream has already been listened to.
#0      _StreamController._subscribe (dart:async/stream_controller.dart:668:7)
#1      _ControllerStream._createSubscription (dart:async/stream_controller.dart:818:19)
#2      _StreamImpl.listen (dart:async/stream_impl.dart:472:9)
#3      koudokusya2 (file:///Users/gaku/src/github.com/gaku3601/study-reactive-dart/1.basic/badpatarn.dart:23:21)
#4      main (file:///Users/gaku/src/github.com/gaku3601/study-reactive-dart/1.basic/badpatarn.dart:8:3)
#5      _startIsolate.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:301:19)
#6      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:172:12)
*/