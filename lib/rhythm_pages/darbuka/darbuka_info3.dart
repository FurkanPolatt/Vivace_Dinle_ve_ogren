import 'package:flutter/material.dart';

import 'dinfo3_1.dart';
import 'dinfo3_2.dart';
import 'dinfo3_3.dart';

class DarbukaInfo3 extends StatefulWidget {
  const DarbukaInfo3({Key? key}) : super(key: key);

  @override
  _DarbukaInfo3State createState() => _DarbukaInfo3State();
}

class _DarbukaInfo3State extends State<DarbukaInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Dinfo1(),
          Dinfo2(),
          Dinfo3(),
        ],
      ),
    );
  }
}
