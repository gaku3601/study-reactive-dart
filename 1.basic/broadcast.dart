import 'dart:async';

StreamController<String> controller = StreamController.broadcast();

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
購読している人1
新聞だょ〜(´・ω・｀)b
購読している人2
新聞だょ〜(´・ω・｀)b
購読している人1
今日の夕刊新聞だょ〜(´・ω・｀)b
購読している人2
今日の夕刊新聞だょ〜(´・ω・｀)b
*/