import 'package:flutter/material.dart';

import 'finfo3_1.dart';
import 'finfo3_2.dart';
import 'finfo3_3.dart';

class FluteInfo3 extends StatefulWidget {
  const FluteInfo3({Key? key}) : super(key: key);

  @override
  _FluteInfo3State createState() => _FluteInfo3State();
}

class _FluteInfo3State extends State<FluteInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Finfo1(),
          Finfo2(),
          Finfo3(),
        ],
      ),
    );
  }
}
