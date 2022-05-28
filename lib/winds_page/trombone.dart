import 'package:flutter/material.dart';
import 'package:musicedu_app/winds_page/trombone/trombone_info1.dart';
import 'package:musicedu_app/winds_page/trombone/trombone_info2.dart';

class Trombone extends StatelessWidget {
  const Trombone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          TromboneInfo1(),
          TromboneInfo2(),
        ],
      ),
    );
  }
}
