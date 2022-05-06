import 'package:flutter/material.dart';

class Cbinfo1 extends StatelessWidget {
  const Cbinfo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/ctb.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
