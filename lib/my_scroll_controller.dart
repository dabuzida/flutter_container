import 'dart:math';

import 'package:flutter/material.dart';

class MyScrollController extends StatefulWidget {
  const MyScrollController({Key? key}) : super(key: key);

  @override
  State<MyScrollController> createState() => _MyScrollControllerState();
}

class _MyScrollControllerState extends State<MyScrollController> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 500,
          decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 5)),
          child: ListView.builder(
            controller: _scrollController,
            shrinkWrap: true,
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return Container(height: 50, color: Color(Random().nextInt(0xffffffff)));
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 50,
              child: OutlinedButton(
                child: Text('동작1'),
                onPressed: () {
                  _scrollController.jumpTo(50);
                  setState(() {});
                },
              ),
            ),
            SizedBox(
              height: 50,
              child: OutlinedButton(
                child: Text('동작2'),
                onPressed: () {
                  _scrollController.jumpTo(50);
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
