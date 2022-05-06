import 'package:flutter/material.dart';

class Tinfo1 extends StatelessWidget {
  const Tinfo1({Key? key}) : super(key: key);

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
