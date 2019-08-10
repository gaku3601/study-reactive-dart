import 'package:rxdart/rxdart.dart';

var timerObservable = Observable.periodic(Duration(seconds: 1), (x) => x.toString());

void main(){
  timerObservable.listen(print);
}

/* output
0
1
2
3
4
5
6
7
8
^C
*/