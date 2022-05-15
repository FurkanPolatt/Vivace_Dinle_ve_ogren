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
              SizedBox(height: 30,),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      child: Image(
                        image: AssetImage('assets/app_images/anasayfa.png'),
                      ),
                    ),
                    Expanded(
                      child: Image(
                        image: AssetImage('assets/app_images/enstrümanlar_anasayfası.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
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
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      child: Image(
                        image: AssetImage('assets/app_images/enstrüman_örneksayfa.png'),
                      ),
                    ),
                    Expanded(
                      child: Image(
                        image: AssetImage('assets/app_images/kendini_testet.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
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
              ),
              SizedBox(height: 75,),
            ],
          ),
        ),
      ),
    );
  }
}
