import 'package:flutter/material.dart';

import 'vlinfo3_1.dart';
import 'vlinfo3_2.dart';
import 'vlinfo3_3.dart';

class ViolaInfo3 extends StatefulWidget {
  const ViolaInfo3({Key? key}) : super(key: key);

  @override
  _ViolaInfo3State createState() => _ViolaInfo3State();
}

class _ViolaInfo3State extends State<ViolaInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Vlinfo1(),
          Vlinfo2(),
          Vlinfo3(),
        ],
      ),
    );
  }
}
