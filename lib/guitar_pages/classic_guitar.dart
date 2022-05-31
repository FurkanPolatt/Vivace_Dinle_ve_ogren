import 'package:flutter/material.dart';

import 'classic_guitar/classic_info1.dart';
import 'classic_guitar/classic_info2.dart';

class ClassicPage extends StatelessWidget {
  const ClassicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          ClassicInfo1(),
          ClassicInfo2(),
        ],
      ),
    );
  }
}
