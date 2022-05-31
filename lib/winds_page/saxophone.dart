import 'package:flutter/material.dart';
import 'package:musicedu_app/winds_page/saxophone/sax_info1.dart';
import 'package:musicedu_app/winds_page/saxophone/sax_info2.dart';

class Saxophone extends StatelessWidget {
  const Saxophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          SaxInfo1(),
          SaxInfo2(),
        ],
      ),
    );
  }
}
