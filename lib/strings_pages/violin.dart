import 'package:flutter/material.dart';
import 'package:musicedu_app/strings_pages/violin/violin_info1.dart';
import 'package:musicedu_app/strings_pages/violin/violin_info2.dart';

class Violin extends StatelessWidget {
  const Violin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          ViolinInfo1(),
          ViolinInfo2(),
        ],
      ),
    );
  }
}
