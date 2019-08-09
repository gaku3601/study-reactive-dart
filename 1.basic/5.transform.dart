import 'dart:async';

StreamController<String> _actionController = StreamController<String>();

StreamTransformer<String, String> transform() {
  return StreamTransformer<String, String>.fromHandlers(
    handleData: (value, sink) {
      sink.add(value+':ありがとうだょ〜');
    }
  );
}

void main() {
  // 購読
  _actionController.stream
  .transform(transform())
  .listen((value){
    print(value);
  });

  // 発行
  _actionController.sink.add('新聞だょ(´・ω・｀)b');
}

/* output
新聞だょ(´・ω・｀)b:ありがとうだょ〜
*/