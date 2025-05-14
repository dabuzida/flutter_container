import 'package:flutter/material.dart';
import 'package:flutter_container/MyLayout.dart';
import 'package:flutter_container/container1.dart';
import 'package:flutter_container/container5.dart';
import 'package:flutter_container/container6.dart';
import 'package:flutter_container/container7.dart';
import 'package:flutter_container/measurable.dart';
import 'package:flutter_container/my_button.dart';
import 'package:flutter_container/my_provider_1/my_provider_1_view.dart';
import 'package:flutter_container/my_provider_2/my_provider_2_view.dart';
import 'package:flutter_container/text_overflow_demo.dart';

import 'build_test/build_test_i.dart';
import 'container2.dart';
import 'container3.dart';
import 'container4.dart';
import 'go_text_overflow.dart';
import 'measurable_widget.dart';
import 'measure_height_length.dart';
import 'my_intrinsic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Test',
      home: MyContainer(),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Widget currentWidget = Container7();
    // const Widget currentWidget = Container5();
    // const Widget currentWidget = MyProvider();
    // const Widget currentWidget = MyAudioPlayer();
    // const Widget currentWidget = MyProvider1View(); // single provider
    // const Widget currentWidget = MyProvider2View(); // MultiProvider

    return Scaffold(
      appBar: AppBar(
        title: Text(currentWidget.toString()),
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      // body: BuildTestI(),
      // body: const MyButton(),
      // body: const MyIntrinsic(),
      // body: const Container5(),
      body: currentWidget,
      // body: const Container2(),
      // body: const MeasureHeightLength(),
      // body: Measurable(key: _globalKey),
      // body: MyLayout(),
      // body: const GoTextOverflow(),
      // body: const TextOverflowDemo(),
      // body: const MyScrollController(),
      // body: ConditionalStatementInChildOrChildren(),
    );
  }
}
