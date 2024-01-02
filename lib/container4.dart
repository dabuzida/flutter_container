import 'package:flutter/material.dart';

class Container4 extends StatefulWidget {
  const Container4({Key? key}) : super(key: key);

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _xx(Colors.amber),
        _xx(Colors.orange),
        _xx(Colors.deepOrange),
        _xx(Colors.orangeAccent),
        _xx(Colors.teal),
        _xx(Colors.purple),
        _xx(Colors.deepPurpleAccent),
        _xx(Colors.deepPurple),
      ],
    );
  }

  Widget _xx(Color color) {
    return Container(
      width: 700,
      height: 50,
      padding: const EdgeInsets.only(top: 100),
      decoration: BoxDecoration(
        color: color,
        // border: Border.all(color: Colors.red),
      ),
      child: SizedBox(),
    );
  }
}
