import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Cinfo2 extends StatelessWidget {
  const Cinfo2({Key? key}) : super(key: key);

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
        child: Column(),
      ),
    );
  }
}

class VideoItems extends StatefulWidget {
  const VideoItems(
      {Key? key,
      required this.videoPlayerController,
      required this.looping,
      required this.autoplay})
      : super(key: key);
  final VideoPlayerController videoPlayerController;
  final bool looping;
  final bool autoplay;

  @override
  State<VideoItems> createState() => _VideoItemsState();
}

class _VideoItemsState extends State<VideoItems> {
  late ChewieController _chewieController;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _chewieController = _chewieController;
    widget.videoPlayerController;
    // ignore: unused_label
    AspectRatio:
    5 / 9;
    // ignore: unused_label
    autoInitialize:
    true;
    // ignore: unused_label
    autoplay:
    widget.autoplay;
    // ignore: unused_label
    looping:
    widget.looping;
    // ignore: unused_label
    errorBuilder:
    (context, errorMessage) {
      return Center(
        child: Text(
          'Error Message',
          style: TextStyle(color: Colors.red),
        ),
      );
    };
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }
}
