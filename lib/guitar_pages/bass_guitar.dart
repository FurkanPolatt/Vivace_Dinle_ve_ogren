import 'package:flutter/material.dart';

import 'bass_guitar/bass_info1.dart';
import 'bass_guitar/bass_info2.dart';

class BassGuitar extends StatelessWidget {
  const BassGuitar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          BassInfo1(),
          BassInfo2(),
        ],
      ),
    );
  }
}
