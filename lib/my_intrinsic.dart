import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyIntrinsic extends StatefulWidget {
  const MyIntrinsic({Key? key}) : super(key: key);

  @override
  State<MyIntrinsic> createState() => _MyIntrinsicState();
}

class _MyIntrinsicState extends State<MyIntrinsic> {
  @override
  void initState() {
    print('1.initState>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
    super.initState();
    // for (int i = 0; i < 1000000000 * 2; i++) {
    //   //
    // }
    // init이 길어져도 끝나야 build 시작
    print('2.for end');

    WidgetsBinding.instance.addPostFrameCallback(
      (Duration timeStamp) async {
        print('aa');
      },
    );
  }

  final NumberFormat numFormat = NumberFormat();
  final NumberFormat x = NumberFormat.currency(locale: "ko_KR", symbol: "￦");

  @override
  Widget build(BuildContext context) {
    print('3.build');
    return Center(
      child: Container(
        // width: 100,
        height: 100,
        color: Colors.amber,
        child: Text(x.format(25615614156)),
      ),
    );
  }
}
