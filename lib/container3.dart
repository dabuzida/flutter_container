import 'package:flutter/material.dart';

class Container3 extends StatelessWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            SizedBox(width: 10),
            Text('2025년 03월 11일'),
            SizedBox(width: 10),
            Text('D-67'),
            SizedBox(width: 10),
            ElevatedButton(onPressed: () {}, child: Text('변경')),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            SizedBox(width: 10),
            Text('2025년 03월 11일'),
            SizedBox(width: 10),
            Text('(67일 남음)'),
            SizedBox(width: 10),
            ElevatedButton(onPressed: () {}, child: Text('변경')),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            SizedBox(width: 10),
            Text('2025년 03월 11일'),
            SizedBox(width: 10),
            Text('( D - 67 )'),
            SizedBox(width: 10),
            ElevatedButton(onPressed: () {}, child: Text('변경')),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(height: 30),
                box('결번', Color(0xFFFF2B58)), // colorOffFocused
                // box('연결성공', Color(0xFF0047FF)),
                box('연결성공', Colors.greenAccent[400]!), //
                box('무응답/기타', Colors.grey[400]!), //
                // box('무응답/기타', Colors.grey),
                box('디폴트', Colors.orange[200]!), //
                const SizedBox(height: 30),
                box('완료', Colors.teal), //
                box('미완료', Colors.pinkAccent[700]!), //
                // box('완료', Colors.tealAccent[700]!),
                // box('완료', Colors.tealAccent[400]!),
                // box('완료', Colors.teal[700]!),
                // box('미완료', Colors.pink),
                const SizedBox(height: 30),
                box('밀착관리', Colors.purple[400]!), //
                box('평시관리', Colors.indigo[400]!), //
                box('내원권고', Colors.red[400]!), //
                // box('내원권고', Colors.red[900]!),
                // box('내원권고', Colors.redAccent[700]!),
              ],
            ),
            const SizedBox(width: 100),
            Column(
              children: <Widget>[
                const SizedBox(height: 30),
                box('결번', Color(0xFFFF2B58)), // colorOffFocused
                // box('연결성공', Color(0xFF0047FF)),
                box('연결성공', Colors.greenAccent[400]!), //
                box('무응답/기타', Colors.grey[400]!), //
                // box('무응답/기타', Colors.grey),
                box('디폴트', Colors.orange[200]!), //

                const SizedBox(height: 30),
                box('동의', Colors.blueAccent[400]!), //
                box('동의', Colors.indigo[700]!),
                box('동의', Colors.indigoAccent[400]!),
                box('동의', Colors.indigoAccent[700]!),
                box('동의', Colors.blueAccent[700]!),
                box('동의', Colors.cyan[400]!),
                box('동의', Colors.cyanAccent[400]!),
                box('동의', Colors.tealAccent[400]!),
                box('거절', Colors.pink[400]!), //
                box('거절', Colors.pinkAccent[400]!), //
                box('정보없음', Colors.grey[400]!),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget box(String title, Color color) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 30),
        SizedBox(width: 100, child: Text(title)),
        const SizedBox(width: 30),
        Container(
          width: 100,
          height: 50,
          color: color,
        )
      ],
    );
  }
}
