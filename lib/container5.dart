import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_container/my_model_controller/my_model_controller.dart';
import 'package:provider/provider.dart';

class Container5 extends StatefulWidget {
  const Container5({Key? key}) : super(key: key);

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> implements RouteAware {
  // 글자 길이에 따른 세로로 길어지기
  final ScrollController _scrollController = ScrollController();

  String getRandomString() {
    final int length = Random().nextInt(1000);

    const String chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';

    return String.fromCharCodes(
      Iterable.generate(length, (_) => chars.codeUnitAt(Random().nextInt(chars.length))),
    );
  }

  Widget _xx(String string) {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Text(string),
    );
  }

  // 22222
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didPopNext() {}

  @override
  void didPush() {}

  @override
  void didPop() {}

  @override
  void didPushNext() {}

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  // /// Called when the current route has been pushed.
  // void didPush() {}

  // /// Called when the current route has been popped off.
  // void didPop() {}

  // /// Called when a new route has been pushed, and the current route is no
  // /// longer visible.
  // void didPushNext() {}
  // 33333

  @override
  Widget build(BuildContext context) {
    print('>> build');
    return ListView(
      controller: _scrollController,
      children: <Widget>[
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: [
                    Container(width: 30, height: 30, color: Colors.green),
                    Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            // Colors.amber,
                            // Colors.amber.shade600,
                            // Colors.amber.shade700,
                            Colors.amber.shade700.withOpacity(0.9),
                            // Colors.white.withOpacity(0.0),
                            Colors.amber.shade300,
                            // Colors.amber.shade200,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                _xx(getRandomString()),
                _xx(getRandomString()),
                // _xx(getRandomString()),
                // _xx(getRandomString()),
                // _xx(getRandomString()),
                // _xx(getRandomString()),
                Wrap(
                  children: [
                    ElevatedButton(
                      child: Text('Banana'),
                      onPressed: () {
                        MyModelController().setName(name: 'Banana');
                      },
                    ),
                    ElevatedButton(
                      child: Text('Apple'),
                      onPressed: () {
                        MyModelController().setName(name: 'Apple');
                      },
                    ),
                  ],
                ),
              ],
            ),
            AnimatedBuilder(
              animation: MyModelController(),
              builder: (BuildContext context, Widget? child) {
                print('>> AnimatedBuilder');

                return Text('>> ${MyModelController().name} <<');
              },
            ),
          ],
        ),
      ],
    );
  }
}
