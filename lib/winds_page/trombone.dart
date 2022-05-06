import 'package:flutter/material.dart';
import 'package:musicedu_app/winds_page/trombone/trombone_info1.dart';
import 'package:musicedu_app/winds_page/trombone/trombone_info2.dart';
import 'package:musicedu_app/winds_page/trombone/trombone_info3.dart';

class Trombone extends StatelessWidget {
  const Trombone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          TromboneInfo1(),
          TromboneInfo2(),
          TromboneInfo3(),
        ],
      ),
    );
  }
}
