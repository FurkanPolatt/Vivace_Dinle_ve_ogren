import 'package:flutter/material.dart';

import 'electro_guitar/electro_info1.dart';
import 'electro_guitar/electro_info2.dart';
import 'electro_guitar/electro_info3.dart';

class ElectroGuitar extends StatelessWidget {
  const ElectroGuitar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          ElectroInfo1(),
          ElectroInfo2(),
          ElectroInfo3(),
        ],
      ),
    );
  }
}
