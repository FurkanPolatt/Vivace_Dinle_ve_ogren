import 'package:flutter/material.dart';

import 'drinfo3_1.dart';
import 'drinfo3_2.dart';
import 'drinfo3_3.dart';

class DrumInfo3 extends StatefulWidget {
  const DrumInfo3({Key? key}) : super(key: key);

  @override
  _DrumInfo3State createState() => _DrumInfo3State();
}

class _DrumInfo3State extends State<DrumInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Drinfo1(),
          Drinfo2(),
          Drinfo3(),
        ],
      ),
    );
  }
}
