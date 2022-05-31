import 'package:flutter/material.dart';

import 'org/org_info1.dart';
import 'org/org_info2.dart';

class Org extends StatelessWidget {
  const Org({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          OrgInfo1(),
          OrgInfo2(),
        ],
      ),
    );
  }
}
