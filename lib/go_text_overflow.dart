import 'package:flutter/material.dart';

class GoTextOverflow extends StatefulWidget {
  const GoTextOverflow({Key? key}) : super(key: key);

  @override
  State<GoTextOverflow> createState() => _GoTextOverflowState();
}

class _GoTextOverflowState extends State<GoTextOverflow> {
  final String _short = 'Contrary to popular belief.';
  // final String _long = 'Contrary to popular belief.Lorem Ipsum is not simply random textttasdfgdtextttasdfgdsssssb.';
  final String _long = 'Contrary to popular belief.\nLorem Ipsum is not simply random textttasdfgd.s';

  String _text = '';

  final int _limit = 91;

  final int _maxLines = 2;
  bool _isMemoOverflow = false;
  final Widget _flag = Container(width: 10, height: 10, color: Colors.red);

  final String a = 'Contrary to popular belief.';
  final String b = 'Contrary to popular belief.\nLorem Ipsum is not simply random textttasdfgd.s';
  final String c = 'Contrary to popular belief.Lorem Ipsum is not simply random textttasdfgd.s';

// 메모 1줄로 할 생각 없는지? 없으면 다시 연구, 있으면 작업 ㄱ
// \n (앤터) 있는 메모는 length로 처리 못함

  @override
  void initState() {
    super.initState();
    _text = _long;
    _isMemoOverflow = _text.length > _limit;
    print(_long.length);
    print(a.length);
    print(b.length);
    print(c.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 300,
            height: 50,
            color: Colors.cyan[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _text,
                  maxLines: _maxLines,
                  overflow: TextOverflow.ellipsis,
                ),
                _isMemoOverflow ? _flag : const SizedBox.shrink(),
              ],
            ),
          ),
          Container(
            color: Colors.teal,
            child: TextButton(
              onPressed: () {
                if (_text.compareTo(_short) == 0) {
                  _text = _long;
                } else {
                  _text = _short;
                }
                _isMemoOverflow = _text.length > _limit;
                setState(() {});
              },
              child: const Text(
                'change sentence',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.purpleAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
