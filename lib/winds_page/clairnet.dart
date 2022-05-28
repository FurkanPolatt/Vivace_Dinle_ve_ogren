import 'package:flutter/material.dart';

import 'clairnet/clairnet_info1.dart';
import 'clairnet/clairnet_info2.dart';

class Clairnet extends StatelessWidget {
  const Clairnet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          ClairnetInfo1(),
          ClairnetInfo2(),
        ],
      ),
    );
  }
}
