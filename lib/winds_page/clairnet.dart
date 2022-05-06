import 'package:flutter/material.dart';

import 'clairnet/clairnet_info1.dart';
import 'clairnet/clairnet_info2.dart';
import 'clairnet/clairnet_info3.dart';

class Clairnet extends StatelessWidget {
  const Clairnet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          ClairnetInfo1(),
          ClairnetInfo2(),
          ClairnetInfo3(),
        ],
      ),
    );
  }
}
