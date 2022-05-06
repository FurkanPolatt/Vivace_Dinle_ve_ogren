import 'package:flutter/material.dart';

import 'sinfo3_1.dart';
import 'sinfo3_2.dart';
import 'sinfo3_3.dart';

class SaxInfo3 extends StatefulWidget {
  const SaxInfo3({Key? key}) : super(key: key);

  @override
  _SaxInfo3State createState() => _SaxInfo3State();
}

class _SaxInfo3State extends State<SaxInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Sinfo1(),
          Sinfo2(),
          Sinfo3(),
        ],
      ),
    );
  }
}
