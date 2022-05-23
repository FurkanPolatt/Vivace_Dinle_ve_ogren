import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassicInfo2 extends StatelessWidget {
  const ClassicInfo2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
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
      body: _buildBody(decoration: BoxDecoration(), controller: _controller),
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