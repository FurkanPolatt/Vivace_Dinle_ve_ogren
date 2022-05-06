import 'package:flutter/material.dart';
import 'package:musicedu_app/guitar_pages/classic_guitar/classic_info1.dart';
import 'package:musicedu_app/guitar_pages/classic_guitar/classic_info2.dart';
import 'package:musicedu_app/guitar_pages/classic_guitar/classic_info3.dart';

class ClassicGuitar extends StatefulWidget {
  const ClassicGuitar({Key? key}) : super(key: key);

  @override
  _ClassicGuitarState createState() => _ClassicGuitarState();
}

class _ClassicGuitarState extends State<ClassicGuitar> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          ClassicInfo1(),
          ClassicInfo2(),
          ClassicInfo3(),
        ],
      ),
    );
  }
}
