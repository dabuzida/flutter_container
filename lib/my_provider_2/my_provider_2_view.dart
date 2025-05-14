import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_container/my_provider_2/number_1_model.dart';
import 'package:flutter_container/my_provider_2/number_2_model.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

class MyProvider2View extends StatelessWidget {
  const MyProvider2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int ww = Random().nextInt(100);
    int ww2 = Random().nextInt(100);
    print('>> build');
    return MultiProvider(
      providers: <SingleChildWidget>[
        ChangeNotifierProvider(create: (context) => Number1(value: ww)),
        ChangeNotifierProvider(create: (context) => Number2(value: ww2)),
      ],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('MultiProvider'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyWidget1(),
              Widget2Parent(),
              MyWidget3(),
            ],
          ),
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
    return Center(
      child: Container(
        width: 250,
        height: 250,
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
                      Text('number1: ${Provider.of<Number1>(context).value}'),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text('--'),
                        onPressed: () {
                          Provider.of<Number1>(context, listen: false).decrease();
                        },
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text('++'),
                        onPressed: () {
                          Provider.of<Number1>(context, listen: false).increase();
                        },
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      Text('number2: ${Provider.of<Number2>(context).value}'),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text('--'),
                        onPressed: null,
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text('++'),
                        onPressed: null,
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

class Widget2Parent extends StatelessWidget {
  const Widget2Parent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('>> widget 2 parent. ${Provider.of<Number1>(context).value} ${Provider.of<Number2>(context).value}');
    return const MyWidget2();
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
                      Text('number1: ${Provider.of<Number1>(context).value}'),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text('--'),
                        onPressed: null,
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text('++'),
                        onPressed: null,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      Text('number2: ${Provider.of<Number2>(context).value}'),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text('--'),
                        onPressed: () {
                          Provider.of<Number2>(context, listen: false).decrease();
                        },
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text('++'),
                        onPressed: () {
                          Provider.of<Number2>(context, listen: false).increase();
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
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('call widget 3'),
                onPressed: () {
                  print('widget 3 !!');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
