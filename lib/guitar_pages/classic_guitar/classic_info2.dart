import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassicInfo2 extends StatelessWidget {
  const ClassicInfo2({Key? key}) : super(key: key);

  get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/classic_guitar.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(10.0)),
              width: 200,
              height: 540,
              padding: EdgeInsets.only(bottom: 480.0),
              margin: EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                controller: controller,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Kaynak Önerileri',
                        style: GoogleFonts.pacifico(
                            color: Colors.brown, fontSize: 20)),
                    Text(
                      'Lorem ıpsum dolor sit amet',
                      style: GoogleFonts.pacifico(
                          color: Colors.brown, fontSize: 15),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Opacity(
          opacity: 0.80,
          child: Text(
            'Klasik Gitar',
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
