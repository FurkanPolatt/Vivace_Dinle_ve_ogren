import 'package:flutter/material.dart';

class Dinfo2 extends StatelessWidget {
  const Dinfo2({Key? key}) : super(key: key);

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
