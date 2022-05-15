import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  late ConfettiController _confettiController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: Duration(seconds: 100));
  }

  @override
  void dispose() {
    super.dispose();
    _confettiController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold (
          backgroundColor: Colors.blueGrey[100],
          body: SafeArea(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: ConfettiWidget(
                      confettiController: _confettiController,
                      blastDirection: pi /2,
                      maxBlastForce: 5,
                      minBlastForce: 3,
                      emissionFrequency: 0.03,

                      numberOfParticles: 20,
                      gravity: 0,
                      shouldLoop: true,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: TextButton(
                      onPressed: () {
                        _confettiController.play();
                      },
                      child: Text(' Tebrikler, Hazırsınız! ',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),

                    ),
                  ),
                ]
              )
            ),
          ),
    );
  }
}
