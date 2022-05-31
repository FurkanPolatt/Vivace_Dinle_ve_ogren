import 'package:flutter/material.dart';

import 'acoustic_guitar/acoustic_info1.dart';
import 'acoustic_guitar/acoustic_info2.dart';

class AcousticGuitar extends StatelessWidget {
  const AcousticGuitar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          AcousticInfo1(),
          AcousticInfo2(),
        ],
      ),
    );
  }
}
