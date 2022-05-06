import 'package:flutter/material.dart';

import 'acoustic_guitar/acoustic_info1.dart';
import 'acoustic_guitar/acoustic_info2.dart';
import 'acoustic_guitar/acoustic_info3.dart';

class AcousticGuitar extends StatelessWidget {
  const AcousticGuitar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          AcousticInfo1(),
          AcousticInfo2(),
          AcousticInfo3(),
        ],
      ),
    );
  }
}
