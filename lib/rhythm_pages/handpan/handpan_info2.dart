import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HandpanInfo2 extends StatelessWidget {
  const HandpanInfo2({Key? key}) : super(key: key);
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
          _buildPageView2(),
        ],
      ),
      _buildPageView()
    ],
  );
}

_buildPageView2() {
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

_buildPageView() {
  return Container(
    child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
        Widget>[
      SizedBox(height: 30.0),
      Text('Bilgiler',
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
      DefaultTabController(
          length: 4, // length of tabs
          initialIndex: 0,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: TabBar(
                    labelColor: Color.fromARGB(255, 36, 133, 168),
                    unselectedLabelColor: Color.fromARGB(255, 226, 218, 218),
                    tabs: [
                      Tab(text: 'Tab 1'),
                      Tab(text: 'Tab 2'),
                      Tab(text: 'Tab 3'),
                      Tab(text: 'Tab 4'),
                    ],
                  ),
                ),
                Container(
                    height: 200, //height of TabBarView
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey, width: 0.5))),
                    child: TabBarView(children: <Widget>[
                      Center(
                        child: Text('Display Tab 1',
                            style: GoogleFonts.roboto(
                                fontSize: 25, color: Colors.white)),
                      ),
                      Center(
                        child: Text('Display Tab 2',
                            style: GoogleFonts.roboto(
                                fontSize: 25, color: Colors.white)),
                      ),
                      Center(
                        child: Text('Display Tab 3',
                            style: GoogleFonts.roboto(
                                fontSize: 25, color: Colors.white)),
                      ),
                      Center(
                        child: Text('Display Tab 4',
                            style: GoogleFonts.roboto(
                                fontSize: 25, color: Colors.white)),
                      ),
                    ]))
              ])),
    ]),
  );
}
