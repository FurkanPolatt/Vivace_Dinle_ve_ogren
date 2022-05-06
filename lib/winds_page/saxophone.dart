import 'package:flutter/material.dart';
import 'package:musicedu_app/winds_page/saxophone/sax_info1.dart';
import 'package:musicedu_app/winds_page/saxophone/sax_info2.dart';
import 'package:musicedu_app/winds_page/saxophone/sax_info3.dart';

class Saxophone extends StatelessWidget {
  const Saxophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          SaxInfo1(),
          SaxInfo2(),
          SaxInfo3(),
        ],
      ),
    );
  }
}
