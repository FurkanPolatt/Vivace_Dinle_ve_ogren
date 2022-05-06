import 'package:flutter/material.dart';

class SaxInfo2 extends StatelessWidget {
  const SaxInfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/sax.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
