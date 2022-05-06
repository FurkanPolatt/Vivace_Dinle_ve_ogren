import 'package:flutter/material.dart';

class Cjinfo1 extends StatelessWidget {
  const Cjinfo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/cjn.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
