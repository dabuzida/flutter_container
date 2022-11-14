import 'package:flutter/material.dart';

class BuildTestII extends StatefulWidget {
  const BuildTestII({Key? key}) : super(key: key);

  @override
  State<BuildTestII> createState() => _BuildTestIIState();
}

class _BuildTestIIState extends State<BuildTestII> {
  bool _switchColor = true;
  Color _color = Colors.green.shade100;
  @override
  Widget build(BuildContext context) {
    print('BuildTestII');
    return Container(
      width: 100,
      height: 300,
      color: _color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Widget 2',
          ),
          Container(
            color: Colors.amber,
            child: TextButton(
              onPressed: () {
                if (_switchColor) {
                  _color = Colors.yellow;
                } else {
                  _color = Colors.blue.shade100;
                }
                _switchColor = !_switchColor;

                setState(() {});
              },
              child: Text(
                'widget 2 색상변환',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
