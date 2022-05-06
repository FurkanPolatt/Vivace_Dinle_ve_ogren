import 'package:flutter/material.dart';

import 'epinfo3_1.dart';
import 'epinfo3_2.dart';
import 'epinfo3_3.dart';

class ElectroPInfo3 extends StatefulWidget {
  const ElectroPInfo3({Key? key}) : super(key: key);

  @override
  _ElectroPInfo3State createState() => _ElectroPInfo3State();
}

class _ElectroPInfo3State extends State<ElectroPInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Epinfo1(),
          Epinfo2(),
          Epinfo3(),
        ],
      ),
    );
  }
}
