import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Containerr extends StatefulWidget {
  const Containerr({Key? key}) : super(key: key);

  @override
  State<Containerr> createState() => _ContainerrState();
}

class _ContainerrState extends State<Containerr> {
  Color x = Colors.green;
  Color y = Colors.red;
  Color? z;
  @override
  void initState() {
    super.initState();
    z = x;
  }

  void _x() {
    print('ddd');
  }

  @override
  Widget build(BuildContext context) {
    print('build5');
    return Center(
      child: GestureDetector(
        onTap: () {
          _x();
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
            // width: MediaQuery.of(context).size.width,
            constraints: BoxConstraints(
              minWidth: 200,
              maxWidth: 300,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 1,
              ),
              color: z,
            ),
            // width: 100,
            // height: 100,
          ),
        ),
      ),
    );
  }
}
