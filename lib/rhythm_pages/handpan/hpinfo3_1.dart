import 'package:flutter/material.dart';

class Hpinfo1 extends StatelessWidget {
  const Hpinfo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/handpan2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}