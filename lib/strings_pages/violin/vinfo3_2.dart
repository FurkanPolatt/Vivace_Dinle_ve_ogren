import 'package:flutter/material.dart';

class Vinfo2 extends StatelessWidget {
  const Vinfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/violin.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
