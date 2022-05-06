import 'package:flutter/material.dart';

import 'ainfo3_1.dart';
import 'ainfo3_2.dart';
import 'ainfo3_3.dart';

class AcousticInfo3 extends StatefulWidget {
  const AcousticInfo3({Key? key}) : super(key: key);

  @override
  _AcousticInfo3State createState() => _AcousticInfo3State();
}

class _AcousticInfo3State extends State<AcousticInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Ainfo1(),
          Ainfo2(),
          Ainfo3(),
        ],
      ),
    );
  }
}
