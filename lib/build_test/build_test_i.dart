import 'package:flutter/material.dart';

import 'build_test_ii.dart';
import 'build_test_iii.dart';

class BuildTestI extends StatelessWidget {
  const BuildTestI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('BuildTestI');
    return Container(
      width: 400,
      height: 400,
      color: Colors.red.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Widget 1',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BuildTestII(),
              BuildTestIII(),
            ],
          ),
        ],
      ),
    );
  }
}
