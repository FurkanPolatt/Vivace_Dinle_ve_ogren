import 'package:flutter/material.dart';

class CtbInfo2 extends StatelessWidget {
  const CtbInfo2({Key? key}) : super(key: key);

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
