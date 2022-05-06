import 'package:flutter/material.dart';

class PianoInfo2 extends StatelessWidget {
  const PianoInfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/piano.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
