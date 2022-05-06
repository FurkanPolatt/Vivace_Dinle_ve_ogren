import 'package:flutter/material.dart';

import 'darbuka/darbuka_info1.dart';
import 'darbuka/darbuka_info2.dart';
import 'darbuka/darbuka_info3.dart';

class Darbuka extends StatelessWidget {
  const Darbuka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          DarbukaInfo1(),
          DarbukaInfo2(),
          DarbukaInfo3(),
        ],
      ),
    );
  }
}
