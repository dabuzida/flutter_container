import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[100],
      // alignment: Alignment.center,
      child: Center(
        child: Container(
          // width: 500,
          color: Colors.blueAccent[100],
          child: Column(
            children: [
              Text(
                'data',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
