import 'package:flutter/material.dart';

class Hpinfo2 extends StatelessWidget {
  const Hpinfo2({Key? key}) : super(key: key);

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