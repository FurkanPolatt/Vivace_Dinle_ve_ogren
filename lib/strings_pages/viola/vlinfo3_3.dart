import 'package:flutter/material.dart';

class Vlinfo3 extends StatelessWidget {
  const Vlinfo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/viola.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
