import 'package:flutter/material.dart';

import 'vinfo3_1.dart';
import 'vinfo3_2.dart';
import 'vinfo3_3.dart';

class ViolinInfo3 extends StatefulWidget {
  const ViolinInfo3({Key? key}) : super(key: key);

  @override
  _ViolinInfo3State createState() => _ViolinInfo3State();
}

class _ViolinInfo3State extends State<ViolinInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Vinfo1(),
          Vinfo2(),
          Vinfo3(),
        ],
      ),
    );
  }
}
