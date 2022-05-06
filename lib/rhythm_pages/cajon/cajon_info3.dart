import 'package:flutter/material.dart';

import 'cjinfo3_1.dart';
import 'cjinfo3_2.dart';
import 'cjinfo3_3.dart';

class CajonInfo3 extends StatefulWidget {
  const CajonInfo3({Key? key}) : super(key: key);

  @override
  _CajonInfo3State createState() => _CajonInfo3State();
}

class _CajonInfo3State extends State<CajonInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Cjinfo1(),
          Cjinfo2(),
          Cjinfo3(),
        ],
      ),
    );
  }
}
