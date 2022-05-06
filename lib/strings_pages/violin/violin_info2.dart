import 'package:flutter/material.dart';

class ViolinInfo2 extends StatelessWidget {
  const ViolinInfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/violin.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
