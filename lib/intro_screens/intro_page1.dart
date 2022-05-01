import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                Container(
                  height: 200,
                  child: Center(
                    child: Text('Animasyon',
                      style: TextStyle(fontSize: 30),
                    ),
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
