import 'package:flutter/material.dart';

import 'build_test_iv.dart';

class BuildTestIII extends StatefulWidget {
  const BuildTestIII({Key? key}) : super(key: key);

  @override
  State<BuildTestIII> createState() => _BuildTestIIIState();
}

class _BuildTestIIIState extends State<BuildTestIII> {
  bool _switchColor = true;
  Color _color = Colors.blue.shade100;
  @override
  Widget build(BuildContext context) {
    print('BuildTestIII');
    return Container(
      width: 200,
      height: 200,
      color: _color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'widget 3',
          ),
          Container(
            color: Colors.indigo,
            child: TextButton(
              onPressed: () {
                if (_switchColor) {
                  _color = Colors.grey;
                } else {
                  _color = Colors.blue.shade100;
                }
                _switchColor = !_switchColor;

                setState(() {});
              },
              child: Text(
                'widget 3 색상변환',
              ),
            ),
          ),
          BuildTestIV(),
        ],
      ),
    );
  }
}
