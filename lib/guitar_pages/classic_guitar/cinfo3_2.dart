import 'package:flutter/material.dart';

class Cinfo2 extends StatelessWidget {
  const Cinfo2({Key? key}) : super(key: key);

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
