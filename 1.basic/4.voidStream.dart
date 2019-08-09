import 'dart:async';
  
StreamController<Null> _actionController = StreamController<Null>();

void main(){
  // 購読
  _actionController.stream
    .listen((data){
      print(data);
      print('dataは必ず渡さないといけないみたい');
      print('なので、通知だけでデータを渡さない時とかはnullわたしとく');
    });

  // 発行
  _actionController.sink.add(null);
}

/* output
null
dataは必ず渡さないといけないみたい
なので、通知だけでデータを渡さない時とかはnullわたしとく
*/