// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import '../../guitar_pages/bass_guitar/view_image.dart';

class CelloInfo1 extends StatefulWidget {
  const CelloInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<CelloInfo1> {
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
            'Çello',
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
                      '''- Viyolonsel ya da çello, keman, viyola ve kontrbas ile aynı ailedendir.
- 16. yüzyılda ilk örnekleri Fransa'da ortaya çıkan bu çalgının şekli kadın vücudunu andırır. 
- Başlangıçta beş telli olarak yapılan bu çalgı, önceleri orkestrada bas sesleri desteklemek için kullanılmıştır. 
- Tek başına belirgin bir çalgı olarak ortaya çıkması ise 18. yüzyılda olmuştur.
- Dört tellidir. 
- Tenor sesli bir çalgıdır.
- Bu çalgının atası viola da gamba adı verilen 4 adet teli bulunan perdeli bir çalgıdır.
- Keman ile viyolonselin şekilleri büyük oranda birbirini andırsa da boyutları çok farklıdır.
- Viyolonsel genellikle akustik olarak kullanılan bir enstrümandır. 
- Her mekânda (açık alan, konser salonu vs.) çalınabilir. 
- Karşıdan bakıldığında gövdesinin orta bölümünde bulunan ve el yazısı ile f harfini andıran 2 ses deliği ve eşik (köprü) olarak adlandırılan bir destek bulunur. 
- Yayın tellere teması ile titreşen tellerden çıkan ses, eşik tarafından gövdenin içindeki havayı titreştirerek, içeride dikey olarak bulunan can direğine iletilir ve bu deliklerden geri döner.
- Özellikle operaya ait eserlerin vazgeçilmezi haline gelmiştir. 

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
