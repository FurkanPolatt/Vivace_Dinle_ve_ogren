// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import '../../infoScreens/Bassguitarinfo.dart';
import '../bass_guitar/view_image.dart';

class ClassicInfo1 extends StatefulWidget {
  const ClassicInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<ClassicInfo1> {
  final _items = [
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.amber,
    Colors.brown,
    Colors.yellow,
    Colors.blue,
  ];
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  final _boxHeight = 300.0;

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
            'Klasik Gitar',
            style: GoogleFonts.pacifico(fontSize: 25, color: Colors.white),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _buildBody(
        decoration: BoxDecoration(),
        controller: _controller,
      ),
    );
  }

  _buildBody(
      {required PageController controller, required BoxDecoration decoration}) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            _buildPageView(),
            _buildCircleIndicator(),
          ],
        ),
        _buildPageView2(),
      ],
    );
  }

  _buildPageView() {
    return Container(
      color: Colors.black87,
      height: _boxHeight,
      margin: EdgeInsets.only(top: _boxHeight / 3.5),
      child: PageView.builder(
          itemCount: appBannerList.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(appBannerList[index].image),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          }),
    );
  }

  _buildPageView2() {
    return Card(
      elevation: 50,
      shadowColor: Colors.black,
      color: Colors.transparent,
      child: SizedBox(
        width: 400,
        height: 370,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Gitar Tarihçe',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 226, 241, 240),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore ',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 227, 227, 227),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 170,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => BassExtra(),
                    ))
                  },
                  color: Color.fromARGB(255, 9, 172, 231),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Icon(Icons.touch_app),
                        Text('Tamamını oku'),
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
  }

  _buildCircleIndicator() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: _items.length,
          currentPageNotifier: _currentPageNotifier,
        ),
      ),
    );
  }
}
