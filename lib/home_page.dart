import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicedu_app/instruments_page/guitar_n_world.dart';
import 'package:musicedu_app/instruments_page/keyboards.dart';
import 'package:musicedu_app/instruments_page/rhythm.dart';
import 'package:musicedu_app/instruments_page/strings.dart';
import 'package:musicedu_app/instruments_page/winds.dart';
import 'package:musicedu_app/quiz_page/quiz_main.dart';

import 'education_ad/edu_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Vivace',
          style: GoogleFonts.damion(
            fontSize: 42,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Container(
            color: Color(0xff1c2c4c),
            child: ListView(
              children: [
                Material(
                  color: Colors.indigo,
                  elevation: 12,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  child: DrawerHeader(
                    // decoration: BoxDecoration(color: Colors.black38),
                    child: Text('Kullanıcı:  ' + user.email!,
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                ListTile(
                  title: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EduPage(),
                        ),
                      );
                    },
                    child: Row(children: [
                      Expanded(
                        child: Icon(
                          Icons.search,
                          color: Colors.white54,
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Text(
                          'Kurs Ara',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                ),
                ListTile(
                  title: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizApp(),
                        ),
                      );
                    },
                    child: Row(children: [
                      Expanded(
                        child: Icon(
                          Icons.book_outlined,
                          color: Colors.white54,
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Text(
                          'Test',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                ),
                ListTile(
                  title: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: Colors.white70,
                              title: Text(
                                  'Eğitim merkezlerinizi uygulamamıza eklemek için lütfen bizimle iletişime geçiniz',
                                  textAlign: TextAlign.center),
                              actions: [
                                Center(
                                  child: Text(
                                    'E-posta: Virtuoso@gmail.com',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                    child: Row(children: [
                      Expanded(
                        child: Icon(
                          Icons.mail_outline_outlined,
                          color: Colors.white54,
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Text(
                          'Bize Ulaşın',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ]),
                  ),
                ),
                ListTile(
                  title: InkWell(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                    },
                    child: Row(children: [
                      Expanded(
                        child: Icon(
                          Icons.exit_to_app,
                          color: Colors.white54,
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Text(
                          'Çıkış Yap',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              //Arkaplan resmi
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(23),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 15,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GuitarnWorld(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Telli       Enstrümanlar',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                              image: AssetImage('assets/images/guitar.jpg'),
                              height: 500,
                              width: 500,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(23),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 15,
                          child: InkWell(
                            splashColor: Colors.black26,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Strings(),
                                  ));
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Yaylı      Enstrümanlar',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                              image: AssetImage('assets/images/violin.jpg'),
                              height: 500,
                              width: 500,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(23),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 15,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Winds(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Nefesli   Enstrümanlar',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                              image: AssetImage('assets/images/wind.jpg'),
                              height: 500,
                              width: 500,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(23),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 15,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Rhythm(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Ritim    Enstrümanları',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                              image: AssetImage('assets/images/drum.jpg'),
                              height: 500,
                              width: 500,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SafeArea(
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(23),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 15,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => KeyBoards(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Tuşlu   Enstrümanlar',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                ),
                              ),
                              image: AssetImage('assets/images/piano.jpg'),
                              height: 130,
                              width: 500,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: 350,
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(23),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 15,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QuizApp(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Kendini Test et',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                ),
                              ),
                              image: AssetImage('assets/images/test.jpg'),
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
