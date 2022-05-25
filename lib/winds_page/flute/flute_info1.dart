// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import '../../guitar_pages/bass_guitar/view_image.dart';

class FluteInfo1 extends StatefulWidget {
  const FluteInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<FluteInfo1> {
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
            'Yan Flüt',
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
                      ''' - Flüt, yanlamasına çalınan, metalden ya da tahtadan yapılabilen bir üflemeli çalgıdır. 
- Flüt ailesinin en yaygın türüdür, orkestralarda ve bandolarda sıkça kullanılır. 
- Çalgının baş bölümünde bir üfleme deliği vardır. Bu nedenle bu bölüme "ağızlık" da denir. 
- Üfleme deliği çalıcının alt dudağına dayalıdır. Sağ omuz yönünde, yere koşut olarak tutulur. Sol el ağızlık tarafında, sağ el ise kuyruk tarafında tutulur. İki elin baş parmağı alttan flütü destekler. 
- Flütün borusu silindir şeklindedir. 
- Çapı 1,9 cm'dir.
- Flüt ağızlıktan başlayarak kapalı uca dek 67,2 cm'dir.
- Yan flütün tarihi çok eski zamanlara dayanır. 
- M.Ö.900’lü yıllardan bu yana Çin’de kullanıldığı bilinmektedir. 
- Avrupa 12.yy’dan bu yana bir flüt cinsi olan yan flüt kullanılmaktadır. 
- Bu tarihlerden itibaren batı müziğinin bir parçası haline gelmiştir. 
- İlk olarak sadece askeri amaçla kullanılan flüt, bandolar içinde yer alırdı. 
- Sonraki yıllarda evrim geçiren bu çalgı yaklaşık 4 yüzyıl bu amaçla kullanmıştır.
- Zamanla daha fazla tuş eklenerek daha çok ses eklenmiştir. Böylelikle artık orkestra ve koro içinde de yer almıştır. 
- Orkestranın vazgeçilmez enstrümanları arasındadır. 
- Yan flüt imalinde ilk zamanlarda abanoz ağacı kullanılırdı. Bugünlerde daha çok bakır, krom, nikel ve gümüş gibi paslanmaz madenlerden imal edilmektedir. 
- Yan flütlerin iç çapı 1.9 cm, uzunluğu 67 cm’dir.
- Baş kısmı (ağızlık) hafif konik şeklindedir. 
- Parmak deliklerine perde adı verilmektedir. Bu deliklerin birbirine olan mesafeleri ve çapı farklı ölçüdedir. 
- Bakır nefesli flütlerin ağaç olanlara göre dezavantajı vardır. Bakır nefesli flütte ses çıkarken yumuşaklığını ve tatlılığını kaybeder. Bu flütte daha çevik ve tok bir ses çıkar.
- Klasik müziğin yanı sıra pop, yerli-yabancı ve daha birçok müzik türünde yan flüt kullanılır.

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
