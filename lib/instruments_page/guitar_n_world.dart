import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicedu_app/guitar_pages/acoustic_guitar.dart';
import 'package:musicedu_app/guitar_pages/bass_guitar.dart';
import 'package:musicedu_app/guitar_pages/classic_guitar.dart';
import 'package:musicedu_app/guitar_pages/electro_guitar.dart';

class GuitarnWorld extends StatelessWidget {
  const GuitarnWorld({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                  builder: (context) => ClassicGuitar(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Klasik Gitar',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ),
                              ),
                              image: AssetImage(
                                  'assets/page_images/classic_guitar.jpg'),
                              height: 160,
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
                                  builder: (context) => AcousticGuitar(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Akustik Gitar',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ),
                              ),
                              image: AssetImage(
                                  'assets/page_images/acoustic_guitar.jpg'),
                              height: 150,
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
                                  builder: (context) => ElectroGuitar(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Elektro Gitar',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ),
                              ),
                              image: AssetImage(
                                  'assets/page_images/electro_guitar.jpg'),
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
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
                                  builder: (context) => BassGuitar(),
                                ),
                              );
                            },
                            child: Ink.image(
                              child: Center(
                                child: Opacity(
                                  opacity: 0.85,
                                  child: Text(
                                    'Bas Gitar',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.pacifico(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ),
                              ),
                              image: AssetImage(
                                  'assets/page_images/bass_guitar.jpg'),
                              height: 150,
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
// onPressed: () {
// Navigator.pushAndRemoveUntil(
// context,
// MaterialPageRoute(
// builder: (context) => HomePage()),
// ModalRoute.withName('/HomePage'));
// }
