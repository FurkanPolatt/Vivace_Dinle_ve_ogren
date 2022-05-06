import 'package:flutter/material.dart';

class MelodicaInfo2 extends StatelessWidget {
  const MelodicaInfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/melodica.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
