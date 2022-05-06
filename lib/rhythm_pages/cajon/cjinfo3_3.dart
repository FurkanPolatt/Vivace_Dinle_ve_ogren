import 'package:flutter/material.dart';

class Cjinfo3 extends StatelessWidget {
  const Cjinfo3({Key? key}) : super(key: key);

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
