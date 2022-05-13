import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Cinfo3 extends StatelessWidget {
  const Cinfo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoPlayer(),
    );
  }
}

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({Key? key}) : super(key: key);

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId:
        "https://www.youtube.com/watch?v=oD6fL4yyhDk&list=RDoD6fL4yyhDk&start_radio=1&ab_channel=CanOzan",
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Opacity(
          opacity: 0.80,
          child: Text(
            'Klasik Müzik Videoları',
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
            image: AssetImage('assets/background/classic_guitar.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Video Başlığı',
              textAlign: TextAlign.center,
              style: GoogleFonts.pacifico(color: Colors.white70, fontSize: 25),
            ),
            SizedBox(
              height: 25,
              width: 20,
            ),
            YoutubePlayer(
                aspectRatio: 1.5,
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.white70),
          ],
        ),
      ),
    );
  }
}
