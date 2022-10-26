import 'package:flutter/material.dart';

class Container2 extends StatefulWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  final Color color1 = Colors.pinkAccent; //
  final Color color2 = Colors.tealAccent[700]!;
  late Color _color;
  bool _switch = true;
  @override
  void initState() {
    super.initState();
    _color = color1;
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Row(
      children: <Widget>[
        Container(
          width: 600,
          height: 600,
          color: Colors.amber,
          child: a(),
        ),
        TextButton(
          onPressed: () {
            if (_switch) {
              _color = color2;
              _switch = !_switch;
            } else {
              _color = color1;
              _switch = !_switch;
            }
            setState(() {});
          },
          child: Text(
            '색깔변경',
          ),
        ),
      ],
    );
  }

  Widget a() {
    print('a');
    return Center(
      child: Container(
        width: 500,
        height: 500,
        color: _color,
        child: b(),
      ),
    );
  }

  Widget b() {
    print('b');
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.blue,
      ),
    );
  }
}
