import 'package:flutter/material.dart';

class Dinfo3 extends StatelessWidget {
  const Dinfo3({Key? key}) : super(key: key);

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
