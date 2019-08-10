import 'dart:async';
import 'package:rxdart/rxdart.dart';

var controller = new StreamController<String>();
var streamObservable = new Observable(controller.stream);

void main(){
  // 購読
  streamObservable.listen(print);
  // 発行
  controller.add('test');
}

/* output
test
*/