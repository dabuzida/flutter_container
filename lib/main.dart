import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container'),
          elevation: 0,
          foregroundColor: Colors.cyanAccent,
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: Colors.greenAccent[100],
        body: ConditionalStatementInChildOrChildren(),
        // body: AAA(),
      ),
    );
  }
}

class AAA extends StatelessWidget {
  AAA({Key? key}) : super(key: key);

  bool xx = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.purple, width: 2),
          ),
          child: (() {
            if (xx) {
              return Container(width: 50, height: 50, color: Colors.amber);
            } else {
              return Container(width: 50, height: 50, color: Colors.teal);
            }
          }()),
          // child: xx ? Text('sdf') : Text('sdfsdf333'),
        ),
        SizedBox(height: 100),
        Container(
          constraints: const BoxConstraints(
            maxWidth: 700,
            minWidth: 100,
            maxHeight: 22,
            minHeight: 11,
          ),
          height: 100,
          // width: MediaQuery.of(context).size.width - 100, // padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            // color: Colors.blue[900],
            border: Border.all(color: Colors.yellow, width: 5),
          ),
          // child: Container(color: Colors.grey),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black, width: 5.0)),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.blue, width: 5.0),
            )),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber, width: 5),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 300,
            minHeight: 100,
            maxWidth: 700,
            minWidth: 500,
          ),
          child: Container(color: Colors.green),
        ),
        SizedBox(height: 100),
        containers(),
        containers3(),
        /* Row(
            children: [
              Container(
                // width: 300,
                height: 100,
                constraints: const BoxConstraints(
                  maxWidth: 300,
                  minWidth: 100,
                ),
                // padding: EdgeInsets.only(right: 50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 5),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 5),
                  ),
                ),
              )
            ],
          ), */
      ],
    );
  }

  Widget containers() {
    double _width = 100;
    double _height = 100;
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(width: _width, height: _height, color: Colors.amber),
        Container(width: _width, height: _height, color: Colors.black),
        Container(width: _width, height: _height, color: Colors.blue[200]),
        Container(width: _width, height: _height, color: Colors.yellow),
        Container(width: _width, height: _height, color: Colors.green),
        Container(width: _width, height: _height, color: Colors.purple),
        Container(width: _width, height: _height, color: Colors.grey),
        Container(width: _width, height: _height, color: Colors.teal),
        Container(width: _width, height: _height, color: Colors.red),
        Container(width: _width, height: _height, color: Colors.purpleAccent[100]),
      ],
    );
  }

  Widget containers2() {
    double _width = 100;
    double _height = 100;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: _width, height: _height, color: Colors.amber),
        Container(width: _width, height: _height, color: Colors.black),
        Container(width: _width, height: _height, color: Colors.blue),
        Container(width: _width, height: _height, color: Colors.yellow),
        // Container(width: _width, height: _height, color: Colors.green),
        // Container(width: _width, height: _height, color: Colors.purple),
        // Container(width: _width, height: _height, color: Colors.grey),
        // Container(width: _width, height: _height, color: Colors.teal),
        Container(width: _width, height: _height, color: Colors.red),
        Container(width: _width, height: _height, color: Colors.purpleAccent[100]),
      ],
    );
  }

  Widget containers3() {
    double _width = 100;
    double _height = 100;
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 10), color: Colors.amber),
        ),
        Container(width: _width, height: _height, color: Colors.black),
        Container(width: _width, height: _height, color: Colors.blue[200]),
        Container(width: _width, height: _height, color: Colors.yellow),
        Container(width: _width, height: _height, color: Colors.green),
        Container(width: _width, height: _height, color: Colors.purple),
        Container(width: _width, height: _height, color: Colors.grey),
        Container(width: _width, height: _height, color: Colors.teal),
        Container(width: _width, height: _height, color: Colors.red),
        Container(width: _width, height: _height, color: Colors.purpleAccent[100]),
      ],
    );
  }
}

// Container?????? child ?????? Column?????? children??? ???????????? ????????? ?????? ??????
class ConditionalStatementInChildOrChildren extends StatefulWidget {
  const ConditionalStatementInChildOrChildren({Key? key}) : super(key: key);

  @override
  State<ConditionalStatementInChildOrChildren> createState() => _ConditionalStatementInChildOrChildrenState();
}

class _ConditionalStatementInChildOrChildrenState extends State<ConditionalStatementInChildOrChildren> {
  bool _toggle = true;
  final Color _toggleOnColor = Colors.indigo;
  final Color _toggleOffColor = Colors.yellow[900]!;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 700,
        height: 700,
        color: Colors.teal,
        child: Column(
          children: <Widget>[
            // 1 ??????????????? o
            _toggle ? Container(width: 100, height: 100, color: _toggleOnColor) : Container(width: 100, height: 100, color: _toggleOffColor),
            SizedBox(height: 10),
            // 2 if-else o
            if (_toggle) Container(width: 100, height: 100, color: _toggleOnColor) else Container(width: 100, height: 100, color: _toggleOffColor),
            SizedBox(height: 10),
            // 3 if-else ?????? o
            (() {
              if (_toggle) {
                return Container(width: 100, height: 100, color: _toggleOnColor);
              } else {
                return Container(width: 100, height: 100, color: _toggleOffColor);
              }
            }()),
            SizedBox(height: 10),

            Container(
              // 4 ??????????????? o
              // child: toggle ? Container(width: 100, height: 100, color: _toggleOnColor) : Container(width: 100, height: 100, color: _toggleOffColor),
              // 5 if-else x
              // child: if (toggle) Container(width: 100, height: 100, color: _toggleOnColor) else Container(width: 100, height: 100, color: _toggleOffColor),
              // 6 if-else ?????? o
              child: (() {
                if (_toggle) {
                  return Container(width: 100, height: 100, color: _toggleOnColor);
                } else {
                  return Container(width: 100, height: 100, color: _toggleOffColor);
                }
              }()),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              height: 100,
              color: Colors.amber,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      _toggle = !_toggle;
                    });
                  },
                  child: const Text('toggle')),
            )
          ],
        ),
      ),
    );
  }
}
