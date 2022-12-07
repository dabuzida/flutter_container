import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Containerr extends StatefulWidget {
  const Containerr({Key? key}) : super(key: key);

  @override
  State<Containerr> createState() => _ContainerrState();
}

class _ContainerrState extends State<Containerr> {
  Color x = Colors.green;
  Color y = Colors.red;
  Color? z;
  @override
  void initState() {
    super.initState();
    z = x;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const RotationTransition(
          turns: AlwaysStoppedAnimation<double>(45 / 360),
          child: Text('당나라'),
        ),
        const RotationTransition(
          turns: AlwaysStoppedAnimation<double>(90 / 360),
          child: Text('당나라'),
        ),
        const RotatedBox(
          quarterTurns: 0,
          child: Text('비용[원]'),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red.shade100,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red[100],
        ),
        Container(
          width: 100,
          height: 100,
          color: Color(0xFF123456),
        ),
        Container(
          width: 100,
          height: 100,
          color: Color(0x00123456),
        ),
        Container(
          width: 100,
          height: 100,
          color: Color(0x123456),
        ),
        Container(
          width: 100,
          height: 100,
          color: Color(0x123456),
        ),
        Container(
          width: 100,
          height: 100,
          color: Color(0xFF000000),
        ),
        Container(
          width: 100,
          height: 100,
          color: Color(0x00000000),
        ),
        Container(
          width: 100,
          height: 100,
          color: Color(0x000000),
        ),
        Container(
          width: 100,
          height: 100,
          color: Color(0x000000),
        ),
      ],
    );
  }
}
