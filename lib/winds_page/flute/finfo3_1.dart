import 'package:flutter/material.dart';

class Finfo1 extends StatelessWidget {
  const Finfo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/flute2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
