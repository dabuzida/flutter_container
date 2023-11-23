import 'package:flutter/material.dart';

class Container4 extends StatefulWidget {
  const Container4({Key? key}) : super(key: key);

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.pink,
              width: 10,
            ),
          ),
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.all(40),
          child: Container(width: 300, height: 300, color: Colors.amber),
        ),
      ),
    );
  }
}
