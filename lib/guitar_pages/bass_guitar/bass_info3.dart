import 'package:flutter/material.dart';

import 'binfo3_1.dart';
import 'binfo3_2.dart';
import 'binfo3_3.dart';

class BassInfo3 extends StatefulWidget {
  const BassInfo3({Key? key}) : super(key: key);

  @override
  _BassInfo3State createState() => _BassInfo3State();
}

class _BassInfo3State extends State<BassInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Binfo1(),
          Binfo2(),
          Binfo3(),
        ],
      ),
    );
  }
}
