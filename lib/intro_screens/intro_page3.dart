import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                //Arkaplan resmi
                image: AssetImage('assets/images/intro_background.jpg'),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child:
                    Lottie.asset('assets/animation/intro3_1.json', height: 700),
              ),
              Center(
                child: AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TypewriterAnimatedText('HADİ BAŞLAYALIM!',
                        textAlign: TextAlign.center,
                        speed: Duration(milliseconds: 50),
                        textStyle: GoogleFonts.robotoMono(
                            fontWeight: FontWeight.bold,
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 20))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
