import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarbukaInfo2 extends StatelessWidget {
  const DarbukaInfo2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final _controller = PageController();
=======
    final controller = PageController();
>>>>>>> de32f042b76b56e2a4551c803a82cb998bb3c363
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
<<<<<<< HEAD
      body: _buildBody(decoration: BoxDecoration(), controller: _controller),
=======
      body: _buildBody(decoration: BoxDecoration(), controller: controller),
>>>>>>> de32f042b76b56e2a4551c803a82cb998bb3c363
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
<<<<<<< HEAD
          _buildPageView2(),
        ],
      ),
      _buildPageView()
=======
          _buildPageView(),
        ],
      ),
>>>>>>> de32f042b76b56e2a4551c803a82cb998bb3c363
    ],
  );
}

<<<<<<< HEAD
_buildPageView2() {
=======
_buildPageView() {
>>>>>>> de32f042b76b56e2a4551c803a82cb998bb3c363
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
<<<<<<< HEAD

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

/*_buildPageView2() {
  return Container(
      height: _boxHeight2,
      margin: EdgeInsets.only(top: _boxHeight / 50.1),
      child: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.transparent,
            child: SizedBox(
              width: 500,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Başlık',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.green[900],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 227, 227, 227),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 110,
                      child: RaisedButton(
                        onPressed: () => {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => QuizPage(),
                          ))
                        },
                        color: Color.fromARGB(255, 9, 172, 231),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Icon(Icons.touch_app),
                              Text('Visit'),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ));
}
*/
=======
>>>>>>> de32f042b76b56e2a4551c803a82cb998bb3c363
