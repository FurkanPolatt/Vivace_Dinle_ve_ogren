import 'package:flutter/material.dart';
import 'package:musicedu_app/keyboard_pages/piano/piano_info1.dart';
import 'package:musicedu_app/keyboard_pages/piano/piano_info2.dart';

class Piano extends StatelessWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          PianoInfo1(),
          PianoInfo2(),
        ],
      ),
    );
  }
}
