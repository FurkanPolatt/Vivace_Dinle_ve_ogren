import 'package:flutter/material.dart';

class Clinfo3 extends StatelessWidget {
  const Clinfo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/clairnet2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
