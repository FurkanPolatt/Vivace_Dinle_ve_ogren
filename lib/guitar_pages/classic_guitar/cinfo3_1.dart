import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicedu_app/guitar_pages/classic_guitar/cinfo3_2.dart';
import 'package:video_player/video_player.dart';

class Cinfo1 extends StatelessWidget {
  const Cinfo1({Key? key}) : super(key: key);

  String? get dataSource => null;

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
              child: ListView(
                children: [
                  VideoItems(
                    videoPlayerController: VideoPlayerController.network(''),
                    autoplay: true,
                    looping: true,
                  ),
                ],
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
            'Videolar',
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
