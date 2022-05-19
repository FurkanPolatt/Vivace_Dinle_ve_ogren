import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(height: 30),
            Lottie.asset('assets/animation/intro2.json', height: 300),
            SizedBox(height: 50),
            AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                TypewriterAnimatedText(
                    'Vivace size hem enstrümanlar hakkında bilgi edinme hem de bilginizi test etme imkanı sunuyor',
                    textAlign: TextAlign.center,
                    speed: Duration(milliseconds: 50),
                    textStyle:
                      GoogleFonts.robotoMono(fontWeight: FontWeight.bold,
                        textStyle: TextStyle(color: Colors.white, fontSize: 15))),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
