import 'dart:math';

import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                // shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                //   RoundedRectangleBorder(
                //     // borderRadius: BorderRadius.circular(18.0),
                //     borderRadius: BorderRadius.all(Radius.zero),
                //     // side: BorderSide(color: Colors.red),
                //   ),
                // ),
                ),
            child: Text('@@@@'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('@@@@'),
          ),
          FilledButton(
            onPressed: () {},
            child: Text('@@@@'),
          ),
          FilledButton.tonal(
            onPressed: () {},
            child: Text('@@@@'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('@@@@'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  print(1);
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    width: 200.0,
                    height: 70.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
                      // color: Colors.white,
                      border: Border(
                        left: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        bottom: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(width: 1),
              GestureDetector(
                onTap: () {
                  print(100);
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    width: 200.0,
                    height: 70.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
                      // color: Colors.white,
                      border: Border(
                        right: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        bottom: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
