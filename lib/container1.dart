import 'package:flutter/material.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
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
        TextButton(
            onPressed: () async {
              final bool? x = await showGeneralDialog<bool?>(
                context: context,
                pageBuilder: (context, animation, secondaryAnimation) => Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue.shade100,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text('뒤로가기'),
                  ),
                ),
              );
              final bool y = x as bool;

              print(y);
            },
            child: Text('================')),
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
      ],
    );
  }
}
