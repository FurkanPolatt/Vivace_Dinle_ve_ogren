import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
          body: Padding(
          padding: EdgeInsets.fromLTRB(20, 65, 20, 65),
          child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Center(
                    child: Lottie.network(
                        'https://assets3.lottiefiles.com/packages/lf20_bfgchzaf.json'),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 150)
                ),
                Container(
                  height: 100,
                  child: Text('Müziğin derinlerine ineceğiniz Vivance dünyasına hoşgeldiniz!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.pacifico(fontSize: 25),
                  ),
                )
              ]
          ),
        ),
      );
  }
}
