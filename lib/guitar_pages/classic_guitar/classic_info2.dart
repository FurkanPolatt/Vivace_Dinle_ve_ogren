import 'package:flutter/material.dart';

class ClassicInfo2 extends StatelessWidget {
  const ClassicInfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/classic_guitar.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
