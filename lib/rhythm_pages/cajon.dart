import 'package:flutter/material.dart';

import 'cajon/cajon_info1.dart';
import 'cajon/cajon_info2.dart';

class Cajon extends StatelessWidget {
  const Cajon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          CajonInfo1(),
          CajonInfo2(),
        ],
      ),
    );
  }
}
