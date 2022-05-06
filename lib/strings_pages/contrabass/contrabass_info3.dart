import 'package:flutter/material.dart';

import 'cbinfo3_1.dart';
import 'cbinfo3_2.dart';
import 'cbinfo3_3.dart';

class CtbInfo3 extends StatefulWidget {
  const CtbInfo3({Key? key}) : super(key: key);

  @override
  _CtbInfo3State createState() => _CtbInfo3State();
}

class _CtbInfo3State extends State<CtbInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Cbinfo1(),
          Cbinfo2(),
          Cbinfo3(),
        ],
      ),
    );
  }
}
