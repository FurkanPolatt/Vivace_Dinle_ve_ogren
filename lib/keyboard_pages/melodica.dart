import 'package:flutter/material.dart';

import 'melodica/melodica_info1.dart';
import 'melodica/melodica_info2.dart';
import 'melodica/melodica_info3.dart';

class Melodica extends StatelessWidget {
  const Melodica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          MelodicaInfo1(),
          MelodicaInfo2(),
          MelodicaInfo3(),
        ],
      ),
    );
  }
}
