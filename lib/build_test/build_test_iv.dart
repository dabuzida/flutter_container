import 'package:flutter/material.dart';

class BuildTestIV extends StatefulWidget {
  const BuildTestIV({Key? key}) : super(key: key);

  @override
  State<BuildTestIV> createState() => _BuildTestIVState();
}

class _BuildTestIVState extends State<BuildTestIV> {
  @override
  Widget build(BuildContext context) {
    print('BuildTestIV');
    return Container(
      width: 50,
      height: 50,
      color: Colors.pink,
      child: Text(
        'widget 4',
      ),
    );
  }
}
