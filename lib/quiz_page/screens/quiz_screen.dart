import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicedu_app/quiz_page/common/extensions.dart';
import 'package:musicedu_app/quiz_page/screens/quiz_result_screen.dart';

import '../common/theme_helper.dart';
import '../models/dto/option_selection.dart';
import '../models/dto/quiz_result.dart';
import '../models/option.dart';
import '../models/question.dart';
import '../models/quiz.dart';
import '../models/quiz_history.dart';
import '../services/quiz_engine.dart';
import '../stores/quiz_store.dart';
import '../widgets/disco_button.dart';
import '../widgets/question_option.dart';
import '../widgets/time_indicator.dart';

class QuizScreen extends StatefulWidget {
  static const routeName = '/quiz';
  late Quiz quiz;
  QuizScreen(this.quiz, {Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState(quiz);
}

class _QuizScreenState extends State<QuizScreen> with WidgetsBindingObserver {
  late QuizEngine engine;
  late QuizStore store;
  late Quiz quiz;
  Question? question;
  Timer? progressTimer;
  AppLifecycleState? state;

  int _remainingTime = 0;
  Map<int, OptionSelection> _optionSerial = {};

  _QuizScreenState(this.quiz) {
    store = QuizStore();
    engine = QuizEngine(quiz, onNextQuestion, onQuizComplete, onStop);
  }

  @override
  void initState() {
    engine.start();
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    this.state = state;
  }

  @override
  void dispose() {
    if (progressTimer != null && progressTimer!.isActive) {
      progressTimer!.cancel();
    }
    engine.stop();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          decoration: ThemeHelper.fullScreenBgBoxDecoration(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                screenHeader(),
                quizQuestion(),
                questionOptions(),
                quizProgress(),
                footerButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget screenHeader() {
    return SizedBox(
      height: 75,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          quiz.title,
          style: TextStyle(
            fontSize: 45,
            color: Color(0xff1c2c4c),
          ),
        ),
      ),
    );
  }

  Widget quizQuestion() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10),
      decoration: ThemeHelper.roundBoxDeco(),
      child: Text(
        question?.text ?? "",
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget questionOptions() {
    return Container(
      alignment: Alignment.center,
      decoration: ThemeHelper.roundBoxDeco(),
      child: Column(
        children: List<Option>.from(question?.options ?? []).map((e) {
          int optionIndex = question!.options.indexOf(e);
          var optWidget = GestureDetector(
            onTap: () {
              setState(() {
                engine.updateAnswer(
                    quiz.questions.indexOf(question!), optionIndex);
                for (int i = 0; i < _optionSerial.length; i++) {
                  _optionSerial[i]!.isSelected = false;
                }
                _optionSerial.update(optionIndex, (value) {
                  value.isSelected = true;
                  return value;
                });
              });
            },
            child: QuestionOption(
              optionIndex,
              _optionSerial[optionIndex]!.optionText,
              e.text,
              isSelected: _optionSerial[optionIndex]!.isSelected,
            ),
          );
          return optWidget;
        }).toList(),
      ),
    );
  }

  Widget quizProgress() {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: TimeIndicator(
              question?.duration ?? 1,
              _remainingTime,
              () {},
            ),
          ),
          Text(
            "$_remainingTime Saniye",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget footerButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DiscoButton(
          onPressed: () {
            setState(() {
              engine.stop();
              if (progressTimer != null && progressTimer!.isActive) {
                progressTimer!.cancel();
              }
            });
            Navigator.pop(context);
          },
          child: Text(
            "Çık",
            style: GoogleFonts.pacifico(
              fontSize: 20,
              color: Color(0xff1c2c4c),
            ),
          ),
          width: 130,
          height: 50,
          isActive: true,
        ),
        DiscoButton(
          onPressed: () {
            engine.next();
          },
          child: Text(
            "İlerle",
            style: GoogleFonts.pacifico(
              fontSize: 20,
              color: Color(0xff1c2c4c),
            ),
          ),
          isActive: true,
          width: 130,
          height: 50,
        ),
      ],
    );
  }

  void onNextQuestion(Question question) {
    setState(() {
      if (progressTimer != null && progressTimer!.isActive) {
        _remainingTime = 0;
        progressTimer!.cancel();
      }

      this.question = question;
      _remainingTime = question.duration;
      _optionSerial = {};
      for (var i = 0; i < question.options.length; i++) {
        _optionSerial[i] = OptionSelection(String.fromCharCode(65 + i), false);
      }
    });

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime >= 0) {
        try {
          if (mounted) {
            setState(() {
              progressTimer = timer;
              _remainingTime--;
            });
          }
        } catch (ex) {
          timer.cancel();
          print(ex.toString());
        }
      }
    });
  }

  void onQuizComplete(Quiz quiz, double total, Duration takenTime) {
    if (mounted) {
      setState(() {
        _remainingTime = 0;
      });
    }
    progressTimer!.cancel();
    store.getCategoryAsync(quiz.categoryId).then((category) {
      store
          .saveQuizHistory(QuizHistory(
              quiz.id,
              quiz.title,
              category.id,
              "$total/${quiz.questions.length}",
              takenTime.format(),
              DateTime.now(),
              "Tamamlandı"))
          .then((value) {
        Navigator.pushReplacementNamed(context, QuizResultScreen.routeName,
            arguments: QuizResult(quiz, total));
      });
    });
  }

  void onStop(Quiz quiz) {
    _remainingTime = 0;
    progressTimer!.cancel();
  }
}
