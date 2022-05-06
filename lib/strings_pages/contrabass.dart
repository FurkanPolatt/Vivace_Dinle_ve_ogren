import 'package:flutter/material.dart';

import 'contrabass/contrabass_info1.dart';
import 'contrabass/contrabass_info2.dart';
import 'contrabass/contrabass_info3.dart';

class ContraBass extends StatelessWidget {
  const ContraBass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          CtbInfo1(),
          CtbInfo2(),
          CtbInfo3(),
        ],
      ),
    );
  }
}
