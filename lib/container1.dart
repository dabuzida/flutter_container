import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // decoration: BoxDecoration(border: Border.all(color: Colors.green, width: 1)),
        color: Colors.red,
        // width: 100,
        // height: 100,
        child: Text('dddddddddd'),
      ),
    );
  }
}
