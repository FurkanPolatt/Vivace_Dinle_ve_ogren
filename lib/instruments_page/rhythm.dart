import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicedu_app/rhythm_pages/cajon.dart';
import 'package:musicedu_app/rhythm_pages/darbuka.dart';
import 'package:musicedu_app/rhythm_pages/drum_kits.dart';
import 'package:musicedu_app/rhythm_pages/hang_drum.dart';

class Rhythm extends StatelessWidget {
  const Rhythm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Opacity(
          opacity: 0.80,
          child: Text(
            'Ritim Enstrümanları',
            style: GoogleFonts.pacifico(fontSize: 25),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
                  child: FadeInLeft(
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
                                    builder: (context) => DrumKit(),
                                  ),
                                );
                              },
                              child: Ink.image(
                                image: AssetImage(
                                    'assets/page_images/drumkit.jpg'),
                                height: 150,
                                fit: BoxFit.cover,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.85,
                                    child: Text(
                                      'Akustik Davul',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.pacifico(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: FadeInLeft(
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
                                    builder: (context) => Cajon(),
                                  ),
                                );
                              },
                              child: Ink.image(
                                image:
                                    AssetImage('assets/page_images/cajon.jpg'),
                                height: 150,
                                fit: BoxFit.cover,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.85,
                                    child: Text(
                                      'Cajon',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.pacifico(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: FadeInLeft(
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
                                    builder: (context) => Darbuka(),
                                  ),
                                );
                              },
                              child: Ink.image(
                                image: AssetImage(
                                    'assets/page_images/darbuka.jpg'),
                                height: 150,
                                fit: BoxFit.cover,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.85,
                                    child: Text(
                                      'Darbuka',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.pacifico(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: FadeInLeft(
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
                                    builder: (context) => HandPan(),
                                  ),
                                );
                              },
                              child: Ink.image(
                                image: AssetImage(
                                    'assets/page_images/handpan.jpg'),
                                height: 140,
                                fit: BoxFit.cover,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.85,
                                    child: Text(
                                      'Handpan',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.pacifico(
                                          color: Colors.white, fontSize: 30),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
// onPressed: () {
// Navigator.pushAndRemoveUntil(
// context,
// MaterialPageRoute(
// builder: (context) => HomePage()),
// ModalRoute.withName('/HomePage'));
// }
