import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:musicedu_app/introduction_onboard.dart';

import 'home_page.dart';
import 'login_page/main_page.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  void initState() {
    super.initState();
    animationPage();
  }

  animationPage() async {
    await Future.delayed(Duration(seconds: 6));

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
        ModalRoute.withName('/MainPage'));
  }

  @override
  Widget build(BuildContext context) {
    //Arka plan renk.
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        SafeArea(
          child: Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //       //Arkaplan resmi
            //       image: AssetImage('assets/images/splash.jpg'),
            //       fit: BoxFit.cover),
            // ),
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 250.0,
              child: TextLiquidFill(
                text: 'Vivance Dinle ve Öğren',
                waveColor: Colors.amber,
                boxBackgroundColor: Colors.black,
                textStyle: GoogleFonts.pacifico(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 150.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Lottie.asset('assets/animation/opening.json'),
          ),
        ),
      ]),
    );
  }
}
