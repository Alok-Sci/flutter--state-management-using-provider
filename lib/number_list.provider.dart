import 'package:flutter/material.dart';

class NumberListProvider extends ChangeNotifier {
  final List<int> numbers = [1, 2, 3, 4];

  void add() {
    /// * extract the last element from the list
    final last = numbers.last;

    /// * add one more element to the list
    numbers.add(last + 1);

    /// * notify all the listeners
    notifyListeners();
  }
}
