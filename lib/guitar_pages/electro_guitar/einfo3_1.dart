import 'package:flutter/material.dart';

class Einfo1 extends StatelessWidget {
  const Einfo1({Key? key}) : super(key: key);

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
