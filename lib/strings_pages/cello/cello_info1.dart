import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CelloInfo1 extends StatelessWidget {
  const CelloInfo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/cello.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Opacity(
          opacity: 0.80,
          child: Text(
            'Çello',
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
