import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BassInfo1 extends StatelessWidget {
  const BassInfo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/bass_guitar.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Opacity(
          opacity: 0.80,
          child: Text(
            'Bas Gitar',
            style: GoogleFonts.pacifico(fontSize: 25),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
