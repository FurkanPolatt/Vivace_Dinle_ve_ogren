import 'package:flutter/material.dart';

class Cinfo3 extends StatelessWidget {
  const Cinfo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/cello.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
