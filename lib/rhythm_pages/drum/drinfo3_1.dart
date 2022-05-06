import 'package:flutter/material.dart';

class Drinfo1 extends StatelessWidget {
  const Drinfo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/drum.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
