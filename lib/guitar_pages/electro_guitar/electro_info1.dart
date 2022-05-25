// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import '../bass_guitar/view_image.dart';

class ElectroInfo1 extends StatefulWidget {
  const ElectroInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<ElectroInfo1> {
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
          opacity: 0.90,
          child: Text(
            'Elektro Gitar',
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
      height: _boxHeight,
      margin: EdgeInsets.only(top: _boxHeight / 3.5),
      child: PageView.builder(
          itemCount: appBannerList.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
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
    return Expanded(
      child: Card(
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
                    child: Text(
                      '''- 1900' lü yılların sonlarında Orville Gibson oval ses delikli archtop gitarları yaptı. 
- 1920’ lerin erken dönemlerinde tasarımcı Lloyd Loar, Gibson’ a katıldı ve archtop caz gitarı bugünkü f-delikli tanıdık formuna soktu.
- 1920 lerin sonuna doğru caz gitarlara manyetiklerin eklenmesi ile elektro gitar doğdu.
- Elektro gitar veya elektronik gitar, sesini manyetikleri aracılığı ile elektrik akımına dönüştüren ve bir amplifikatör ile bu akımdan ses elde edilmesine olanak tanıyan gitar türüdür.
- Oluşturduğu sinyalin değiştirilebilir olması ve yüksek bir sese sahip olması nedeniyle, kullanım alanı çok genişlemiş bir gitar türüdür.
- Elektro gitar boş gövdeli ve katı gövdeli olmak üzere 2 gruba ayrılır:
a. Boş Gövdeli: 
- Bir yükselticiye gereksinim duymadan, sesin gitardaki boşlukta yankılanarak zengin bir ton çıkarmasıyla çalınan gitarlardır. 
- Bu tip gövdelerde keman ailesindeki gibi f delikleri bulunabilir. 
- Bu tarz gövdeyi 1890'da tasarlayan ve dünyaya tanıtan Gibson firmasıdır.
b. Katı Gövdeli
- Katı gövdeli gitarlar; masif gövdeye sahip, sesin doğal yollardan yükselmesine izin vermeyen tipte gövdelere sahip gitarlardır. 
- Yüksek çıkış gücü olan ses kaynaklarının olduğu yerlerde geri beslemeyi en aza indirgeyen gövde türüdür.
- Elektro gitarlar daha çok rock ve metal gibi sert müzik türleri ile anılsa da günümüzde pop müzik türünde dahi kullanılabilmektedir.
- Kendi içinde 9’a ayrılır:
1. Amerikan elektro gitar markaları: B.C Rich, Dean, PRS , Fender, Gibson…
2. Japon elektro gitar markaları: Aria, ESP, Ibanez, Yamaha…
3. Kore elektro gitar markaları: Cort
4. Kanada elektro gitar markaları: Eastwood Guitars, Godin Guitars
5. İtalyan elektro gitar markaları: Eko
6. Alman elektro gitar markaları: Steinberger, Gretsch, Höfner
7. Çek elektro gitar markaları: Ashton, Crafter
8. Avustralya elektro gitar markaları: Tatra, Czerny
9. Belçika elektro gitar markaları: Stagg
 ''',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
