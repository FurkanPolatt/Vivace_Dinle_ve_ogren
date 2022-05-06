import 'package:flutter/material.dart';

class Drinfo2 extends StatelessWidget {
  const Drinfo2({Key? key}) : super(key: key);

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
