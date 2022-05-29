import 'package:flutter/material.dart';

import 'cello/cello_info1.dart';
import 'cello/cello_info2.dart';

class Cello extends StatelessWidget {
  const Cello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          CelloInfo1(),
          CelloInfo2(),
        ],
      ),
    );
  }
}
