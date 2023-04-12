import 'package:flutter/material.dart';

class TextOverflowDemo extends StatefulWidget {
  const TextOverflowDemo({Key? key}) : super(key: key);

  @override
  _EditorState createState() => _EditorState();
}

class _EditorState extends State<TextOverflowDemo> {
  var controller = TextEditingController();

  @override
  void initState() {
    // controller.addListener(() {
    //   setState(() {
    //     mytext = controller.text;
    //   });
    // });
    // controller.text = "This is a long overflowing text!!!";
    controller.text = "This is a long overflowing text!!!sfsdfsdfdssdfThis is a long overflowing text!!!sfsdfsdfdssdfThis is a long overflossssss";
    mytext = controller.text;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String mytext = "";

  @override
  Widget build(BuildContext context) {
    int maxLines = 2;
    double fontSize = 30.0;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          LayoutBuilder(
            builder: (context, size) {
              // Build the textspan
              final TextSpan span = TextSpan(
                text: mytext,
                style: TextStyle(fontSize: fontSize),
              );

              // Use a textpainter to determine if it will exceed max lines
              final TextPainter tp = TextPainter(
                maxLines: maxLines,
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                text: span,
              );

              // trigger it to layout
              tp.layout(maxWidth: size.maxWidth);

              // whether the text overflowed or not
              final bool exceeded = tp.didExceedMaxLines;

              return Column(
                children: <Widget>[
                  Text.rich(
                    span,
                    overflow: TextOverflow.ellipsis,
                    maxLines: maxLines,
                  ),
                  Text(
                    exceeded ? "Overflowed!" : "Not overflowed yet.",
                  ),
                ],
              );
            },
          ),
          TextField(
            controller: controller,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}
