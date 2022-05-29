import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicedu_app/homepage_2.dart';
import 'package:musicedu_app/login_page/password_reset.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({Key? key, required this.showRegisterPage}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } on FirebaseAuthException {
      showDialog(
          context: context,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.white70,
                title: Text('E posta adresiniz veya şifreniz yanlış',
                    textAlign: TextAlign.center),
              ),
            );
          });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: FadeInDown(
              delay: Duration(microseconds: 200),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Image.asset(
                      'assets/images/music-disc.gif',
                      scale: 2,
                      height: 160,
                    ),
                    SizedBox(height: 20),
                    // Karşılama Ekranı
                    Text(
                      'Merhaba!',
                      style: GoogleFonts.pacifico(
                          fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Vivace\'ye Hoşgeldin',
                      style: GoogleFonts.pacifico(
                          fontSize: 20, color: Colors.black54),
                    ),
                    SizedBox(height: 10),
                    // Giriş
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
                    SizedBox(height: 10),
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
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'Şifre'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: Text(
                              'Şifreni mi Unuttun?',
                              style: GoogleFonts.pacifico(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return ForgotPasswordPage();
                                }),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: signIn,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 7),
                        decoration: BoxDecoration(
                            color: Color(0xff1c2c4c),
                            borderRadius: BorderRadius.circular(9)),
                        child: Text(
                          'Giriş Yap',
                          style: GoogleFonts.pacifico(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    //üye değilmisiniz? çevrimdışı devam edin
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Üye Değilmisiniz?',
                              style: GoogleFonts.pacifico(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: widget.showRegisterPage,
                              child: Text(
                                'Üye Ol',
                                style: GoogleFonts.pacifico(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Veya',
                          style: GoogleFonts.pacifico(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        SizedBox(height: 20),
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 5,
                          color: Color(0xff1c2c4c),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => HomePage2(),
                              ));
                            },
                            child: Text(
                              'Çevrimdışı Devam Et',
                              style:
                                  GoogleFonts.pacifico(color: Colors.white70),
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
