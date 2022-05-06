import 'package:flutter/material.dart';

import 'clinfo3_1.dart';
import 'clinfo3_2.dart';
import 'clinfo3_3.dart';

class ClairnetInfo3 extends StatefulWidget {
  const ClairnetInfo3({Key? key}) : super(key: key);

  @override
  _ClairnetInfo3State createState() => _ClairnetInfo3State();
}

class _ClairnetInfo3State extends State<ClairnetInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Clinfo1(),
          Clinfo2(),
          Clinfo3(),
        ],
      ),
    );
  }
}
