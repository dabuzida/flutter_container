import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[100],
      // alignment: Alignment.center,
      child: Center(
        child: GestureDetector(
          child: MouseRegion(
            cursor: MouseCursor.defer,
            // cursor: SystemMouseCursors.click,
            child: Container(
              width: 500,
              height: 500,
              color: null,
              child: Text('xxxxxxxxxx'),
            ),
          ),
        ),
      ),
    );
  }
}
