import 'package:flutter/material.dart';

class Cjinfo2 extends StatelessWidget {
  const Cjinfo2({Key? key}) : super(key: key);

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
