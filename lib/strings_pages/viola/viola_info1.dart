// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import '../../guitar_pages/bass_guitar/view_image.dart';

class ViolaInfo1 extends StatefulWidget {
  const ViolaInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<ViolaInfo1> {
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
            'Viola',
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
    return Expanded(
      child: Container(
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
      ),
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
                      '''- Viyola, yaylı çalgılar ailesinin ikinci üyesidir ve Alto' da denir. 
- 7. yüzyılda İngiltere’de icat edildiği ileri sürüldüğü gibi, aynı yüzyılda İtalya’da bulunduğu da iddia edilmektedir. 
- Fiziki yapısı kemana çok benzer. Keman ailesi müzik aletlerinde orta sese sahiptir ve keman ile çello arasında yer alır. 
- Gövde uzunluğu 41 – 45 cm civarındadır.
- Viyolanın da dört teli vardır ve tam beşli aralıklarla DO, SOL, RE, LA olarak akort edilir.
- Viyola teknik açıdan da kemana çok benzer. Parmak ve yay tekniği, pozisyonlar ve değişik ses renklerini elde etme yöntemleri kemandan farksızdır. Fakat viyolanın genelde koyu, derin ve can alıcı bir ses rengi vardır.
- Genellikle viyolaya, orkestrada armoni eşliğinin orta partilerini seslendirme görevi verilir çünkü viyolanın ses alanı, orkestranın ses alanının tam ortasındadır. Kimi zaman özelliklerinden faydalanmak için bu çalgıya karakteristik ezgileri seslendirme görevi de verilir.
- Viyola bazen çağdaş popüler müzikte, çoğunlukla avangardda kullanılır.
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
