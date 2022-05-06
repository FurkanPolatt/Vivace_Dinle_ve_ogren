import 'package:flutter/material.dart';

class OrgInfo2 extends StatelessWidget {
  const OrgInfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/org.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}