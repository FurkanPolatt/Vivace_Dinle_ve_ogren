import 'package:flutter/material.dart';

import 'handpan/handpan_info1.dart';
import 'handpan/handpan_info2.dart';

class HandPan extends StatelessWidget {
  const HandPan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          HandpanInfo1(),
          HandpanInfo2(),
        ],
      ),
    );
  }
}
