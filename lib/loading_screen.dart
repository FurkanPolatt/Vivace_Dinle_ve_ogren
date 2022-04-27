import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:musicedu_app/introduction_onboard.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    loadinPage();
  }

  loadinPage() async {
    await Future.delayed(Duration(seconds: 6));

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => IntroductionPage()),
        ModalRoute.withName('/HomePage'));
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
            child: Lottie.network(
                'https://assets4.lottiefiles.com/private_files/lf30_lhpjycyu.json'),
          ),
        ),
      ]),
    );
  }
}
