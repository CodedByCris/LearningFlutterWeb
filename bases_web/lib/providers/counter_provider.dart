import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  CounterProvider(String base) {
    if (int.tryParse(base) != null) _counter = int.parse(base);
  }

  int _counter = 15;

  get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
