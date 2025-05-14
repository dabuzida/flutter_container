import 'package:flutter/material.dart';

class Count with ChangeNotifier {
  int value;

  Count({required this.value});

  void increase() {
    value++;
    notifyListeners();
  }

  void decrease() {
    value--;
    notifyListeners();
  }
}
