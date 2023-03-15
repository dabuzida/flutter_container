import 'dart:async';

import 'package:flutter/material.dart';

class MeasurableWidget extends StatefulWidget {
  const MeasurableWidget({Key? key, required this.child, required this.onSized}) : super(key: key);
  final Widget child;
  final void Function(Size size) onSized;

  @override
  _MeasurableWidgetState createState() => _MeasurableWidgetState();
}

class _MeasurableWidgetState extends State<MeasurableWidget> {
  bool _hasMeasured = false;
  @override
  Widget build(BuildContext context) {
    Size size = Size.zero;
    if (context.findRenderObject() == null) {
      //
    } else {
      size = (context.findRenderObject() as RenderBox).size;
    }
    // final RenderBox? x = context.findRenderObject() as RenderBox;
    // Size size = x?.size ?? Size.zero;
    // Size size = (context.findRenderObject() as RenderBox)?.size ?? Size.zero;
    // Size size = (context.findRenderObject() as RenderBox)?.size ?? Size.zero;
    if (size != Size.zero) {
      widget.onSized.call(size);
    } else if (!_hasMeasured) {
      // Need to build twice in order to get size
      scheduleMicrotask(() => setState(() => _hasMeasured = true));
    }
    return widget.child;
  }
}

class Tree extends RenderBox {
  //
}
