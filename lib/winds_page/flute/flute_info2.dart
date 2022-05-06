import 'package:flutter/material.dart';

class FluteInfo2 extends StatelessWidget {
  const FluteInfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/flute2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
