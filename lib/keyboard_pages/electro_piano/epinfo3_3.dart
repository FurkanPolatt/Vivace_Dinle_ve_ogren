import 'package:flutter/material.dart';

class Epinfo3 extends StatelessWidget {
  const Epinfo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/epiano.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
