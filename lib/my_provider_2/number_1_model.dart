import 'package:flutter/material.dart';

class Number1 with ChangeNotifier {
  int value;

  Number1({required this.value});

  void increase() {
    value++;
    notifyListeners();
  }

  void decrease() {
    value--;
    notifyListeners();
  }
}
