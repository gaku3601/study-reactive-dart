import 'package:rxdart/rxdart.dart';

var subject = new PublishSubject<String>();

void main(){
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