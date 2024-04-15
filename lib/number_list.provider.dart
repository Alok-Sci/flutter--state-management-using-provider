import 'package:flutter/material.dart';

class NumberListProvider extends ChangeNotifier {
  final List<int> numbers = [1, 2, 3, 4];

  void add() {
    print('called add');
    
    final last = numbers.last; // ! extract the last element from the list
    numbers.add(last + 1); // ! add one more element to the list
    notifyListeners(); // ! notify all the listeners
  }
}
