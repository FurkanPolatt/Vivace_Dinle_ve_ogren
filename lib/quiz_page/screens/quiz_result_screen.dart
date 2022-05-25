import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../common/theme_helper.dart';
import '../models/dto/quiz_result.dart';
import '../widgets/disco_button.dart';

class QuizResultScreen extends StatefulWidget {
  static const routeName = '/quizResult';
  QuizResult result;
  QuizResultScreen(this.result, {Key? key}) : super(key: key);

  @override
  _QuizResultScreenState createState() => _QuizResultScreenState(this.result);
}

class _QuizResultScreenState extends State<QuizResultScreen> {
  QuizResult result;
  int totalQuestions = 0;
  double totalCorrect = 0;

  _QuizResultScreenState(this.result);

  @override
  void initState() {
    setState(() {
      totalCorrect = result.totalCorrect;
      totalQuestions = result.quiz.questions.length;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash_background.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            quizResultInfo(result),
            bottomButtons(),
          ],
        ),
      ),
    );
  }

  Widget bottomButtons() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DiscoButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Kapat",
              style: GoogleFonts.pacifico(fontSize: 20),
            ),
            width: 150,
            height: 50,
            isActive: true,
          ),
          // DiscoButton(
          //   onPressed: () {
          //     Navigator.pushReplacementNamed(
          //         context, QuizHistoryScreen.routeName);
          //   },
          //   child: Text(
          //     "History",
          //     style: TextStyle(color: Colors.white, fontSize: 20),
          //   ),
          //   width: 150,
          //   height: 50,
          //   isActive: true,
          // ),
        ],
      ),
    );
  }

  Widget quizResultInfo(QuizResult result) {
    return Column(
      children: [
        Container(
          child: Lottie.asset('assets/animation/confetti_quiz.json',
              height: 250, width: 400),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Tebrikler!",
          style: GoogleFonts.pacifico(
              fontSize: 35,
              shadows: [
                Shadow(
                    color: ThemeHelper.shadowColor,
                    offset: Offset(-5, 5),
                    blurRadius: 20)
              ],
              color: Colors.white),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Testi Başarı İle Bitirdiniz",
          style: GoogleFonts.pacifico(fontSize: 25, color: Colors.white),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Puanınız",
          style: GoogleFonts.pacifico(fontSize: 20, color: Colors.white),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "$totalCorrect/$totalQuestions",
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
      ],
    );
  }
}
