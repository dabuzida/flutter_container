import 'package:flutter/material.dart';

class Container2 extends StatefulWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Container(width: 50, height: 50, color: Colors.amber),
        SafeArea(
          // minimum: const EdgeInsets.all(32.0),
          left: true,
          child: Container(
            width: 600,
            height: 50,
            constraints: BoxConstraints(
                // minWidth: 600,
                ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 5),
              color: Colors.amber,
            ),
          ),
        ),
      ],
    );
  }
}
