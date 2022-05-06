import 'package:flutter/material.dart';

class Sinfo3 extends StatelessWidget {
  const Sinfo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/sax.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
