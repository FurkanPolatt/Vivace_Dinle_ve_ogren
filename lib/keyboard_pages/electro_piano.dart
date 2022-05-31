import 'package:flutter/material.dart';

import 'electro_piano/electrop_info1.dart';
import 'electro_piano/electrop_info2.dart';

class ElectroPiano extends StatelessWidget {
  const ElectroPiano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          ElectroPInfo1(),
          ElectroPInfo2(),
        ],
      ),
    );
  }
}
