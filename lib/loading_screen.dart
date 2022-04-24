import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
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
    await Future.delayed(Duration(seconds: 3));

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
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText('Merhaba',
                      textStyle: TextStyle(fontSize: 25, color: Colors.white),
                      duration: Duration(seconds: 4))
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              'assets/images/loading.gif',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ]),
    );
  }
}
