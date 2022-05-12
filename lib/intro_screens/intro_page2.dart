import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/screenshot_images/anasayfa.png'),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/screenshot_images/enstrümanlar_anasayfası.png'),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    child: AnimatedTextKit(
                      totalRepeatCount: 1,
                      animatedTexts: [
                        TypewriterAnimatedText(
                            'Giriş yapar yapmaz sizi ana ekranımız karşılar',
                            textAlign: TextAlign.center,
                            speed: Duration(milliseconds: 50),
                            textStyle:
                            GoogleFonts.robotoMono(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    child: AnimatedTextKit(
                      totalRepeatCount: 1,
                      animatedTexts: [
                        TypewriterAnimatedText(
                            'Öncelikle bir enstrüman başlığı seçebilirsiniz',
                            textAlign: TextAlign.center,
                            speed: Duration(milliseconds: 50),
                            textStyle:
                            GoogleFonts.robotoMono(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/screenshot_images/enstrüman_örneksayfa.png'),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/screenshot_images/kendini_testet.png'),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    child: AnimatedTextKit(
                      totalRepeatCount: 1,
                      animatedTexts: [
                        TypewriterAnimatedText(
                            'Seçtiğiniz enstrüman için detaylı bilgileri bu sayfalarda bulabilirsiniz',
                            textAlign: TextAlign.center,
                            speed: Duration(milliseconds: 50),
                            textStyle:
                            GoogleFonts.robotoMono(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    child: AnimatedTextKit(
                      totalRepeatCount: 1,
                      animatedTexts: [
                        TypewriterAnimatedText(
                            'Kendini test et bölümünde müzik bilginizi test edebilirsiniz',
                            textAlign: TextAlign.center,
                            speed: Duration(milliseconds: 50),
                            textStyle:
                            GoogleFonts.robotoMono(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
