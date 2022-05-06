import 'package:flutter/material.dart';

class Dinfo1 extends StatelessWidget {
  const Dinfo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/darbuka2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
