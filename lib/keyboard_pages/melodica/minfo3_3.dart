import 'package:flutter/material.dart';

class Mpinfo3 extends StatelessWidget {
  const Mpinfo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/melodica2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
