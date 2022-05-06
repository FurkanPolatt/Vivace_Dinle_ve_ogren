import 'package:flutter/material.dart';

class HandpanInfo2 extends StatelessWidget {
  const HandpanInfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/handpan2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
