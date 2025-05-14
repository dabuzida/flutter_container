import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_container/my_provider_1/count_model.dart';
import 'package:provider/provider.dart';

class MyProvider1View extends StatelessWidget {
  const MyProvider1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Provider 1개 사용
    print('>> build');
    return ChangeNotifierProvider(
      create: (context) => Count(value: 0),
      child: Column(
        children: <Widget>[
          MyWidget1(),
          MyWidget2(),
          MyWidget3(),
        ],
      ),
    );
  }
}

class MyWidget1 extends StatelessWidget {
  const MyWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('>> widget 1');
    // final Count count = Provider.of<Count>(context);

    return Center(
      child: Container(
        width: 250,
        height: 270,
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Text(
                'Widget: 1',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('count: ${Provider.of<Count>(context).value}'),
                      // Text('count: ${count.value}'),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text('--'),
                        onPressed: () {
                          Provider.of<Count>(context, listen: false).decrease();
                          // count.decrease();
                        },
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text('++'),
                        onPressed: () {
                          Provider.of<Count>(context, listen: false).increase();
                          // count.increase();
                        },
                      ),
                      SizedBox(height: 10),
                      Widget1Children(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Widget1Children extends StatelessWidget {
  const Widget1Children({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color ee = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    print('>> Widget 1 Children');
    return Container(
      width: 51,
      height: 51,
      color: ee,
      child: Widget1ChildrenChildren(),
    );
  }
}

class Widget1ChildrenChildren extends StatelessWidget {
  const Widget1ChildrenChildren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color ee = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    print('>> Widget 1 Children Children');
    return Center(
      child: Container(
        width: 15,
        height: 15,
        color: ee,
      ),
    );
  }
}

class MyWidget2 extends StatelessWidget {
  const MyWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('>> widget 2');
    return Center(
      child: Container(
        width: 250,
        height: 250,
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.green)),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Text(
                'Widget: 2',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('count: ${Provider.of<Count>(context).value}'),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text('--'),
                        onPressed: () {
                          Provider.of<Count>(context, listen: false).decrease();
                        },
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text('++'),
                        onPressed: () {
                          Provider.of<Count>(context, listen: false).increase();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget3 extends StatelessWidget {
  const MyWidget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('>> widget 3');
    return Center(
      child: Container(
        width: 250,
        height: 250,
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Text(
                'Widget: 3',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              SizedBox(height: 10),
              Container(width: 50, height: 50, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
