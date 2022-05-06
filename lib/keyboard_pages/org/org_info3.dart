import 'package:flutter/material.dart';

import 'oinfo3_1.dart';
import 'oinfo3_2.dart';
import 'oinfo3_3.dart';

class OrgInfo3 extends StatefulWidget {
  const OrgInfo3({Key? key}) : super(key: key);

  @override
  _OrgInfo3State createState() => _OrgInfo3State();
}

class _OrgInfo3State extends State<OrgInfo3> {
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
