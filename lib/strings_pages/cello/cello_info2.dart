import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CelloInfo2 extends StatelessWidget {
  const CelloInfo2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Opacity(
          opacity: 0.80,
          child: Text(
            'Öğretici',
            style: GoogleFonts.pacifico(fontSize: 25, color: Colors.white),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _buildBody(decoration: BoxDecoration(), controller: controller),
    );
  }
}

const _boxHeight = 250.0;

_buildBody(
    {required PageController controller, required BoxDecoration decoration}) {
  return Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          _buildPageView(),
        ],
      ),
    ],
  );
}

_buildPageView() {
  return Container(
      color: Colors.black87,
      height: _boxHeight,
      margin: EdgeInsets.only(top: _boxHeight / 3.1),
      child: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer.network(
              "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
              betterPlayerConfiguration: BetterPlayerConfiguration(
                aspectRatio: 16 / 9,
              ),
            ),
          );
        },
      ));
}
