import 'package:rxdart/rxdart.dart';

var subject = PublishSubject<String>();

void main() async {
  // 購読
  subject.listen((data){
    print('検知------');
    print(data);
  });

  // 発行
  subject.add("Item1");
  subject.add("Item1");
  subject.add("Item2");
  subject.add("Item1");
  
  await Future.delayed(Duration(seconds: 5)); // このコードは検証用 5秒待つ
  // 購読
  subject.listen((data){
    print('検知------');
    print(data);
  });
  await Future.delayed(Duration(seconds: 5)); // このコードは検証用 5秒待つ
}

/* output
検知------
Item1
検知------
Item1
検知------
Item2
検知------
Item1
*/