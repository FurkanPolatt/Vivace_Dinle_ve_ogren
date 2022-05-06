import 'package:flutter/material.dart';

import 'piano3_1.dart';
import 'piano3_2.dart';
import 'piano3_3.dart';

class PianoInfo3 extends StatefulWidget {
  const PianoInfo3({Key? key}) : super(key: key);

  @override
  _PianoInfo3State createState() => _PianoInfo3State();
}

class _PianoInfo3State extends State<PianoInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Pinfo1(),
          Pinfo2(),
          Pinfo3(),
        ],
      ),
    );
  }
}
