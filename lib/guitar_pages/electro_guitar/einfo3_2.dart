import 'package:flutter/material.dart';

class Einfo2 extends StatelessWidget {
  const Einfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/electro_guitar.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}