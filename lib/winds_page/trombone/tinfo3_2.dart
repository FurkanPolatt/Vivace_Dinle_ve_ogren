import 'package:flutter/material.dart';

class Tinfo2 extends StatelessWidget {
  const Tinfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/trmbn.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
