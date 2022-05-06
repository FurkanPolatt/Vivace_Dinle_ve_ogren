import 'package:flutter/material.dart';
import 'package:musicedu_app/strings_pages/viola/viola_info1.dart';
import 'package:musicedu_app/strings_pages/viola/viola_info2.dart';
import 'package:musicedu_app/strings_pages/viola/viola_info3.dart';

class Viola extends StatelessWidget {
  const Viola({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          ViolaInfo1(),
          ViolaInfo2(),
          ViolaInfo3(),
        ],
      ),
    );
  }
}
