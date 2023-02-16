import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{

  int counter = 0;
    incrementCounter() {
       counter++;
       print(counter);
       notifyListeners();   // elbnt n2at klam // counter 1
  }
   String decrementCounter(){
    counter--;
    print(counter);
    notifyListeners();
    // elbnt n2at klam // counter 1
     return counter.toString();
  }
}


// void main (){
//   CounterProvider x =CounterProvider();
//   x.incrementCounter();
// }