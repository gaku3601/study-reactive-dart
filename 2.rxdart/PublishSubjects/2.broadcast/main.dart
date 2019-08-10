import 'package:rxdart/rxdart.dart';

var subject = PublishSubject<String>();

void main() async {
  // 購読
  subject.listen((data){
    print('検知1------');
    print(data);
  });
  subject.listen((data){
    print('検知2------');
    print(data);
  });

  // 発行
  subject.add("Item1");
  subject.add("Item1");
  subject.add("Item2");
  subject.add("Item1");
  
  await Future.delayed(Duration(seconds: 5)); // このコードは検証用 5秒待つ
}

/* output
検知1------
Item1
検知2------
Item1
検知1------
Item1
検知2------
Item1
検知1------
Item2
検知2------
Item2
検知1------
Item1
検知2------
Item1
*/