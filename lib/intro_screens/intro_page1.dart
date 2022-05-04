import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
          body: SafeArea(
            child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200),
                  Lottie.network(
                        'https://assets3.lottiefiles.com/packages/lf20_bfgchzaf.json'),
                  SizedBox(height: 50),
                  Text('Müziğin derinlerine ineceğiniz Vivance dünyasına hoşgeldiniz!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                ]
            ),
          ),
        ),
      );
  }
}
