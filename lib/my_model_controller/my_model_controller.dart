import 'package:flutter/material.dart';

class MyModelController with ChangeNotifier {
  factory MyModelController() => _instance;
  MyModelController._internal();
  static final MyModelController _instance = MyModelController._internal();

  String name = 'mango';

  void setName({required String name}) {
    MyModelController().name = name;

    notifyListeners();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  // @override
  // void didPopNext() {}

  // @override
  // void didPush() {}

  // @override
  // void didPop() {}

  // @override
  // void didPushNext() {}

  // void didPopNext() { }

  // /// Called when the current route has been pushed.
  // void didPush() { }

  // /// Called when the current route has been popped off.
  // void didPop() { }

  // /// Called when a new route has been pushed, and the current route is no
  // /// longer visible.
  // void didPushNext() { }
}
