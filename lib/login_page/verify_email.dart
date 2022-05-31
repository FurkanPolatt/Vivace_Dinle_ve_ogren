import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:musicedu_app/home_page.dart';
import 'package:showcaseview/showcaseview.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  bool isEmailVerified = false;
  bool canResendEmail = false;
  Timer? timer;
  @override
  void initState() {
    super.initState();
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isEmailVerified) {
      sendVerificationEmail();

      Timer.periodic(
        Duration(seconds: 3),
        (_) => checkEmailVerified(),
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser!.reload();
    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });
    if (isEmailVerified) timer?.cancel();
  }

  Future sendVerificationEmail() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
      setState(() => canResendEmail = false);
      await Future.delayed(
        Duration(seconds: 5),
      );
      setState(() => canResendEmail = true);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.white70,
                title: Text('Bir Sorun oluştu', textAlign: TextAlign.center),
              ),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) => isEmailVerified
      ? ShowCaseWidget(
        builder: Builder(builder: (_) => HomePage()),
      )
      : Scaffold(
          appBar: AppBar(
            leading: BackButton(
              color: Colors.white,
              onPressed: () => FirebaseAuth.instance.signOut(),
            ),
            backgroundColor: Color(0xff1c2c4c),
          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Lottie.asset(
                'assets/animation/mail_verify.json',
                height: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                '''Hesabınızı onaylamak için,  
   lütfen e postanızı kontrol ediniz.''',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary: Color(0xff425ACF),
                    minimumSize: Size.fromHeight(50),
                  ),
                  icon: Icon(
                    Icons.email_outlined,
                    size: 30,
                  ),
                  label: Text(
                    'Tekrar Gönder',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: canResendEmail ? sendVerificationEmail : null),
            ),
          ]),
        );
}
