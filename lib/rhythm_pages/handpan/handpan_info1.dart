// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import '../../guitar_pages/bass_guitar/view_image.dart';

class HandpanInfo1 extends StatefulWidget {
  const HandpanInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<HandpanInfo1> {
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
            'Handpan',
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
                      '''- Hang (drum) olarak bilenen daha sonra el yapımı olup ve daha anlaşılır olması için hang yerine handpan adı verilen bir çeşit perküsyon enstrümandır.
- Karayip enstrümanı Steelpan’in kuzeni sınıflandırılan ve ‘Hipnotik Enstrüman’ olarak nitelendirilen hang, Bern dilinde ve Macarca’da el anlamına geliyor.
- İlk kez 1989 yılında, Felix Rohner, Macaristan turunda icat etmiştir. 
- Steelband olarak adlandırdığı perküsyon aletini 1 yıl kadar güneşin altında bekletmiş, onun deyimiyle yaşlanmış varilden yapmıştır. Harika sıcak bir ses elde ettiği ilk Steelband, fabrikadan çıkan yeni bir varilden çok daha iyi bir sese sahiptir. Bunun fark edilmesi yapay yaşlanmış metaller olan pang kompozit markasının oluşumunda uzun süren araştırma sürecinin başlangıcı olmuştur. Böylece hang veya handpan yaygınlaşmaya başlamıştır.
- Görünüşü kaplumbağa kabuğunu andıran perküsyon aleti, çelikten üretilir. 
- Kucakta ya da yere konularak el ve parmaklarla çalınır. 
- Sesini hiç duymayanlar için benzetme yapmak gerekirse arp, gong ya da yere düşen gözleme sacını andıran bir sesi var. 
- Yüzeydeki 7 çukura vurarak titreşim yoluyla sesler elde edilir. Sesler diyoruz çünkü notalar konusunda belirsizlik var. 
- Bugüne kadar hang’in boy boy 45’ten fazla modeli geliştirildi. Ancak çalma konusunda bir kural ya da okullarda öğretilen bir yöntemi henüz yok. Yine de bir mantığı var: 35 nota düzeninde tasarlanan Hang’ı satın alırken yalnızca bir notayı seçebiliyorsunuz, örneğin fa diyez hang. Ancak bu enstrümanda düşük bas tonları çalmak kimilerine göre imkânsız.
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
