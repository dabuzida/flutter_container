import 'package:flutter/material.dart';

class MeasureHeightLength extends StatefulWidget {
  const MeasureHeightLength({Key? key}) : super(key: key);

  @override
  State<MeasureHeightLength> createState() => _MeasureHeightLengthState();
}

class _MeasureHeightLengthState extends State<MeasureHeightLength> {
  List<Widget> xx = <Widget>[
    Container(
      width: 50,
      height: 50,
      color: Colors.redAccent,
    ),
  ];
  double _height = 10;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.greenAccent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: xx,
                ),
              ),
              // VerticalDivider(width: 5),
              Text('현재 높이: $_height'),
              Text(constraints.minWidth.toString()),
              Text(constraints.maxWidth.toString()),
              Text(constraints.minHeight.toString()),
              Text(constraints.maxHeight.toString()),
              TextButton(
                onPressed: () {
                  final List<Widget> temp = [];
                  for (int i = 0; i < xx.length - 1; i++) {
                    temp.add(xx[i]);
                  }

                  xx = temp;
                  setState(() {});
                },
                child: Text(
                  '-상자',
                ),
              ),
              TextButton(
                onPressed: () {
                  xx.add(
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.redAccent,
                    ),
                  );
                  setState(() {});
                },
                child: Text(
                  '+상자',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
