import 'dart:math';

import 'package:flutter/material.dart';

class Container5 extends StatefulWidget {
  const Container5({Key? key}) : super(key: key);

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
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

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _xx(getRandomString()),
            _xx(getRandomString()),
            _xx(getRandomString()),
            _xx(getRandomString()),
            _xx(getRandomString()),
            _xx(getRandomString()),
          ],
        ),
      ],
    );
  }
}
