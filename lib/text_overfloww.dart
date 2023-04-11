import 'package:flutter/material.dart';

class TextOverfloww extends StatefulWidget {
  const TextOverfloww({Key? key}) : super(key: key);

  @override
  State<TextOverfloww> createState() => _TextOverflowwState();
}

class _TextOverflowwState extends State<TextOverfloww> {
  TextOverflow aaa = TextOverflow.ellipsis;
  double na = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[100],
      // alignment: Alignment.center,
      child: Center(
        child: Column(
          children: [
            Container(
              width: na,
              height: 100,
              color: null,
              child: Text(
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                overflow: aaa,
              ),
            ),
            TextButton(
                onPressed: () {
                  aaa = TextOverflow.visible;
                  // na
                  setState(() {});
                },
                child: Text('xxxxxxxxxxx')),
          ],
        ),
      ),
    );
  }
}
