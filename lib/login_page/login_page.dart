import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicedu_app/home_page.dart';
import 'package:musicedu_app/login_page/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/images/music-disc.gif',
              scale: 2,
            ),
            SizedBox(height: 25),
            // Karşılama Ekranı
            Text(
              'Merhaba!',
              style: GoogleFonts.pacifico(
                  fontWeight: FontWeight.bold, fontSize: 35),
            ),
            SizedBox(height: 10),
            Text(
              'Vivace\'ye Hoşgeldin',
              style: GoogleFonts.pacifico(fontSize: 20, color: Colors.black54),
            ),
            SizedBox(height: 50),
            // Giriş
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Material(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10),
                elevation: 5,
                child: MaterialButton(
                  onPressed: () async {
                    await signInWithGoogle();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
                  },
                  child: Text(
                    'Google ile Giriş Yap',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 35),
            //üye değilmisiniz? çevrimdışı devam edin
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Üye Değilmisiniz?',
                  style: GoogleFonts.pacifico(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                ),
                SizedBox(height: 20),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 5,
                  color: Color(0xff1c2c4c),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Text(
                      'Çevrimdışı Devam Et',
                      style: GoogleFonts.pacifico(color: Colors.white70),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
