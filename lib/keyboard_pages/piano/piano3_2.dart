import 'package:flutter/material.dart';

class Pinfo2 extends StatelessWidget {
  const Pinfo2({Key? key}) : super(key: key);

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
