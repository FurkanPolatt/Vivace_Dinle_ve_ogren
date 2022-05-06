import 'package:flutter/material.dart';
import 'package:musicedu_app/guitar_pages/classic_guitar/cinfo3_1.dart';
import 'package:musicedu_app/guitar_pages/classic_guitar/cinfo3_2.dart';
import 'package:musicedu_app/guitar_pages/classic_guitar/cinfo3_3.dart';

class ClassicInfo3 extends StatefulWidget {
  const ClassicInfo3({Key? key}) : super(key: key);

  @override
  _ClassicInfo3State createState() => _ClassicInfo3State();
}

class _ClassicInfo3State extends State<ClassicInfo3> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Cinfo1(),
          Cinfo2(),
          Cinfo3(),
        ],
      ),
    );
  }
}
