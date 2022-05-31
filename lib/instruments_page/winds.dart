import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicedu_app/winds_page/clairnet.dart';
import 'package:musicedu_app/winds_page/flute.dart';
import 'package:musicedu_app/winds_page/saxophone.dart';
import 'package:musicedu_app/winds_page/trombone.dart';

class Winds extends StatelessWidget {
  const Winds({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 50,
        title: Opacity(
          opacity: 0.80,
          child: Text(
            'Nefesli Enstrümanlar',
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
                                    builder: (context) => Clairnet(),
                                  ),
                                );
                              },
                              child: Ink.image(
                                image: AssetImage(
                                    'assets/page_images/clairnet.jpg'),
                                height: 150,
                                fit: BoxFit.cover,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.85,
                                    child: Text(
                                      'Klarnet',
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
                                    builder: (context) => Trombone(),
                                  ),
                                );
                              },
                              child: Ink.image(
                                image: AssetImage(
                                    'assets/page_images/trombone.jpg'),
                                height: 150,
                                fit: BoxFit.cover,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.85,
                                    child: Text(
                                      'Trombon',
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
                                    builder: (context) => Saxophone(),
                                  ),
                                );
                              },
                              child: Ink.image(
                                image: AssetImage(
                                    'assets/page_images/saxophone.jpg'),
                                height: 150,
                                fit: BoxFit.cover,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.85,
                                    child: Text(
                                      'Saksafon',
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
                                    builder: (context) => Flute(),
                                  ),
                                );
                              },
                              child: Ink.image(
                                image:
                                    AssetImage('assets/page_images/flute.jpg'),
                                height: 130,
                                fit: BoxFit.cover,
                                child: Center(
                                  child: Opacity(
                                    opacity: 0.85,
                                    child: Text(
                                      'Yan Flüt',
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
