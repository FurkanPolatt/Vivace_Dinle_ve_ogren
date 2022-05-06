import 'package:flutter/material.dart';

import 'minfo3_1.dart';
import 'minfo3_2.dart';
import 'minfo3_3.dart';

class MelodicaInfo3 extends StatefulWidget {
  const MelodicaInfo3({Key? key}) : super(key: key);

  @override
  _MelodicaInfo3State createState() => _MelodicaInfo3State();
}

class _MelodicaInfo3State extends State<MelodicaInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Mpinfo1(),
          Mpinfo2(),
          Mpinfo3(),
        ],
      ),
    );
  }
}
