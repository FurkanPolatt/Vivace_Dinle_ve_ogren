import 'package:flutter/material.dart';

import 'drum/drum_info1.dart';
import 'drum/drum_info2.dart';

class DrumKit extends StatelessWidget {
  const DrumKit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          DrumInfo1(),
          DrumInfo2(),
        ],
      ),
    );
  }
}
