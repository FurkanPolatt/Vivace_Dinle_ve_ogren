import 'package:flutter/material.dart';

import 'cinfo3_1.dart';
import 'cinfo3_2.dart';
import 'cinfo3_3.dart';

class CelloInfo3 extends StatefulWidget {
  const CelloInfo3({Key? key}) : super(key: key);

  @override
  _CelloInfo3State createState() => _CelloInfo3State();
}

class _CelloInfo3State extends State<CelloInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Cinfo1(),
          Cinfo2(),
          Cinfo3(),
        ],
      ),
    );
  }
}
