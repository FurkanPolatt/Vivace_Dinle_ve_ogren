import 'package:flutter/material.dart';

import 'einfo3_1.dart';
import 'einfo3_2.dart';
import 'einfo3_3.dart';

class ElectroInfo3 extends StatefulWidget {
  const ElectroInfo3({Key? key}) : super(key: key);

  @override
  _ElectroInfo3State createState() => _ElectroInfo3State();
}

class _ElectroInfo3State extends State<ElectroInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Einfo1(),
          Einfo2(),
          Einfo3(),
        ],
      ),
    );
  }
}
