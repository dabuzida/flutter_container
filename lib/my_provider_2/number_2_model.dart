import 'package:flutter/material.dart';

class Number2 with ChangeNotifier {
  int value;

  Number2({required this.value});

  void increase() {
    value++;
    notifyListeners();
  }

  void decrease() {
    value--;
    notifyListeners();
  }
}
