import 'package:flutter/material.dart';

class ClairnetInfo2 extends StatelessWidget {
  const ClairnetInfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/clairnet2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
