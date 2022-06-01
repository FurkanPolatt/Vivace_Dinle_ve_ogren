import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

import '../model/video_list_data.dart';

class VideoListWidget extends StatefulWidget {
  final VideoListData? videoListData;

  const VideoListWidget({Key? key, this.videoListData}) : super(key: key);

  @override
  _VideoListWidgetState createState() => _VideoListWidgetState();
}

class _VideoListWidgetState extends State<VideoListWidget> {
  VideoListData? get videoListData => widget.videoListData;
  BetterPlayerConfiguration? betterPlayerConfiguration;
  BetterPlayerListVideoPlayerController? controller;

  @override
  void initState() {
    super.initState();
    controller = BetterPlayerListVideoPlayerController();
    betterPlayerConfiguration = BetterPlayerConfiguration(autoPlay: false);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
<<<<<<< HEAD
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              videoListData!.videoTitle,
              style: TextStyle(fontSize: 50),
            ),
          ),
          AspectRatio(
              aspectRatio: 1,
              child: BetterPlayerListVideoPlayer(
                BetterPlayerDataSource(
                  BetterPlayerDataSourceType.network,
                  videoListData!.videoUrl,
                  notificationConfiguration:
                      BetterPlayerNotificationConfiguration(
                          showNotification: false,
                          title: videoListData!.videoTitle,
                          author: "Test"),
                  bufferingConfiguration: BetterPlayerBufferingConfiguration(
                      minBufferMs: 2000,
                      maxBufferMs: 10000,
                      bufferForPlaybackMs: 1000,
                      bufferForPlaybackAfterRebufferMs: 2000),
                ),
                configuration: BetterPlayerConfiguration(
                    autoPlay: false, aspectRatio: 1, handleLifecycle: false),
                //key: Key(videoListData.hashCode.toString()),
                playFraction: 0.8,
                betterPlayerListVideoPlayerController: controller,
              )),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("text "
                "text "
                "text"
                "text "
                "text"
                "text"),
          ),
          Center(
            child: Wrap(children: [
              ElevatedButton(
                child: Text("Play"),
                onPressed: () {
                  controller!.play();
                },
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                child: Text("Pause"),
                onPressed: () {
                  controller!.pause();
                },
=======
      child: Container(
        color: Colors.black54,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                videoListData!.videoTitle,
                style: TextStyle(fontSize: 50),
>>>>>>> fa904d477a03808579c05e773c715bb27f6da14d
              ),
            ),
            AspectRatio(
                aspectRatio: 16 / 9,
                child: BetterPlayerListVideoPlayer(
                  BetterPlayerDataSource(
                    BetterPlayerDataSourceType.network,
                    videoListData!.videoUrl,
                    liveStream: false,
                    notificationConfiguration:
                        BetterPlayerNotificationConfiguration(
                            showNotification: false,
                            title: videoListData!.videoTitle,
                            author: "Test"),
                    bufferingConfiguration: BetterPlayerBufferingConfiguration(
                        minBufferMs: 2000,
                        maxBufferMs: 10000,
                        bufferForPlaybackMs: 1000,
                        bufferForPlaybackAfterRebufferMs: 2000),
                  ),
                  configuration: BetterPlayerConfiguration(
                      aspectRatio: 1, handleLifecycle: true),
                  //key: Key(videoListData.hashCode.toString()),
                  playFraction: 0.8,
                  betterPlayerListVideoPlayerController: controller,
                  autoPlay: false,
                )),
          ],
        ),
      ),
    );
  }
}
