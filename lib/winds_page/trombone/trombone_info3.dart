import 'package:flutter/material.dart';

import 'tinfo3_1.dart';
import 'tinfo3_2.dart';
import 'tinfo3_3.dart';

class TromboneInfo3 extends StatefulWidget {
  const TromboneInfo3({Key? key}) : super(key: key);

  @override
  _TromboneInfo3State createState() => _TromboneInfo3State();
}

class _TromboneInfo3State extends State<TromboneInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Tinfo1(),
          Tinfo2(),
          Tinfo3(),
        ],
      ),
    );
  }
}
