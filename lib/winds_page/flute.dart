import 'package:flutter/material.dart';

import 'flute/flute_info1.dart';
import 'flute/flute_info2.dart';

class Flute extends StatelessWidget {
  const Flute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          FluteInfo1(),
          FluteInfo2(),
        ],
      ),
    );
  }
}
