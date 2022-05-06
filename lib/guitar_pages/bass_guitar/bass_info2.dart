import 'package:flutter/material.dart';

class BassInfo2 extends StatelessWidget {
  const BassInfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/bass_guitar.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
