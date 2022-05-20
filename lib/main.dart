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
      home: AAA(),
    );
  }
}

class AAA extends StatelessWidget {
  const AAA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        elevation: 0,
        foregroundColor: Colors.cyanAccent,
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.green[100],
      body: Column(
        children: [
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
      ),
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
}
