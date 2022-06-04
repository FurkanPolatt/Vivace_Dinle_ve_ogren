import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../model/video_list_data.dart';
import '../../video_list/video_list_widget.dart';

class MelodicaInfo2 extends StatefulWidget {
  const MelodicaInfo2({Key? key}) : super(key: key);

  @override
  _VideoListPageState createState() => _VideoListPageState();
}

//
class _VideoListPageState extends State<MelodicaInfo2> {
  List<VideoListData> dataList = [];
  var value = 0;

  @override
  void initState() {
    _setupData();
    super.initState();
  }

  void _setupData() {
    dataList.add(VideoListData("buraya başlık", Constants.mel1));
    dataList.add(VideoListData("buraya başlık ", Constants.mel2));
  }

  _buildPageView() {
    return Container(
      color: Colors.grey[900],
      child: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              VideoListData videoListData = dataList[index];
              return VideoListWidget(
                videoListData: videoListData,
              );
            },
          ),
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Opacity(
            opacity: 0.90,
            child: Text(
              'Klasik Gitar',
              style: GoogleFonts.pacifico(fontSize: 25, color: Colors.white),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: _buildPageView());
  }
}
