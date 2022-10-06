import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
    return Center(
      child: GestureDetector(
        onTap: () {
          if (z == x) {
            z = y;
          } else {
            z = x;
          }
          setState(() {});
        },
        child: MouseRegion(
          // cursor: SystemMouseCursors.click,
          cursor: MouseCursor.defer,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 1,
              ),
              color: z,
            ),
            // width: 100,
            // height: 100,
            child: Text('dddddddddd'),
          ),
        ),
      ),
    );
  }
}
