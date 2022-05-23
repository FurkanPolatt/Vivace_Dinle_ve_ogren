import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: Colors.white70,
              title: Text(
                  'Şifre başarı ile sıfırlandı. Lütfen e postanızı kontrol edin.',
                  textAlign: TextAlign.center),
            );
          });
    } on FirebaseAuthException {
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
                title: Text('Lütfen geçerli bir adres giriniz.',
                    textAlign: TextAlign.center),
              ),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c2c4c),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Lottie.asset('assets/animation/forgot-password.json',
                height: 250),
          ),
          SizedBox(height: 60),
          Text(
            'Lütfen E-mail adresinizi giriniz',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Email'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              padding: EdgeInsets.all(15),
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: passwordReset,
              child: Text(
                'Şifreyi Sıfırla',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              color: Color(0xff1c2c4c),
            ),
          ),
        ]),
      ),
    );
  }
}
