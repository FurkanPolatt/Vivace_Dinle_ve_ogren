// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

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
    final controller = PageController();

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
      body: _buildBody(
        decoration: BoxDecoration(),
        controller: controller,
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
      padding: EdgeInsets.all(8),
      height: _boxHeight,
      margin: EdgeInsets.only(top: _boxHeight / 5),
      child: PageView.builder(
          itemCount: appBannerList.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage(appBannerList[index].image),
                    fit: BoxFit.cover,
                  ),
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
    return Expanded(
      child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: Colors.transparent,
        child: SizedBox(
          width: 400,
          height: 500,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Hakkında',
                style: GoogleFonts.pacifico(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '''- Modern klasik gitar, 1850'li yıllarda İspanyol usta Antonio Torres sayesinde günümüzdeki şeklini aldı.
- Gitarın gövdesinin ortasında ses deliği denilen yuvarlak bir boşluk bulunur. 
- Gitarın telleri titreştiğinde gövdenin içinde bulunan hava titreşir ve tek çıkış noktası olan bu yuvarlak boşluktan dışarı ses olarak geri çıkar. 
- Toplam 6 tel vardır: 3’ü kalın tel çelikten ve kalan 3’ü de ince tel naylondan yapılmıştır.
- Genellikle parmak ile çalınır.
- Sağ elini kullanan müzisyenler tellere vurmak için sağ elin parmaklarını kullanır, başparmak telin tepesinden aşağıya doğru (aşağı vuruş) ve diğer parmaklar telin altından yukarıya doğru (yukarı vuruş) vurulur.
- Genelde klasik ve flamenko tarzı müziklerde kullanılır.
Parmak Gösterimi:
P: Başparmak
İ: İşaret parmağı
M: Orta parmak
A: Yüzük parmağı
X: Sağ elin serçe parmağı
 ''',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // SizedBox(
              //   width: 170,
              //   child: MaterialButton(
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(8),
              //     ),
              //     onPressed: () => {
              //       Navigator.of(context).pushReplacement(MaterialPageRoute(
              //         builder: (context) => BassExtra(),
              //       ))
              //     },
              //     color: Colors.white70,
              //     child: Padding(
              //       padding: const EdgeInsets.all(4.0),
              //       child: Row(
              //         children: [
              //           Icon(Icons.touch_app),
              //           Text('Tamamını oku'),
              //         ],
              //       ),
              //     ),
              //   ),
              // )
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
