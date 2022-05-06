import 'package:flutter/material.dart';

import 'hpinfo3_1.dart';
import 'hpinfo3_2.dart';
import 'hpinfo3_3.dart';

class HandpanInfo3 extends StatefulWidget {
  const HandpanInfo3({Key? key}) : super(key: key);

  @override
  _HandpanInfo3State createState() => _HandpanInfo3State();
}

class _HandpanInfo3State extends State<HandpanInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Hpinfo1(),
          Hpinfo2(),
          Hpinfo3(),
        ],
      ),
    );
  }
}
