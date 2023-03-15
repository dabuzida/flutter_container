import 'package:flutter/material.dart';

import 'measurable_widget.dart';

class Measurable extends StatefulWidget {
  const Measurable({Key? key}) : super(key: key);

  @override
  State<Measurable> createState() => _MeasurableState();
}

class _MeasurableState extends State<Measurable> {
  Size _widgetSize = Size.zero;
  void _handleWidgetSized(Size value) => setState(() => _widgetSize = value);

  static GlobalKey _globalKey2 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // RenderBox box = widget.context.findRenderObject();
    return SizedBox(
      width: 300,
      height: 500,
      child: Expanded(
        child: MeasurableWidget(
          key: _globalKey2,
          child: Container(width: 100, height: 300),
          // child: RenderBox(),
          onSized: _handleWidgetSized,
        ),
      ),
    );
  }
}
