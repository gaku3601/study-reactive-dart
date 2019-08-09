import 'dart:async';

var controller = StreamController<String>();

void main() {
  // listenさせます(購読する)
  koudokusya1();

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

/* output
購読している人1
新聞だょ〜(´・ω・｀)b
購読している人1
今日の夕刊新聞だょ〜(´・ω・｀)b
 */