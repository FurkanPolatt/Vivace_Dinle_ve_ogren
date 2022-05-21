// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import '../../guitar_pages/bass_guitar/view_image.dart';

class PianoInfo1 extends StatefulWidget {
  const PianoInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<PianoInfo1> {
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
            'Akustik Piyano',
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
                      '''- Floransalı Bartolomeo Cristofori 1711 yılında “Piyano e forte” yani “hem hafif hem kuvvetli çalınabilir” adlı yeni bir müzik aleti icat etti. 
- "Piyano" sözcüğü ise İtalyanca adı olan "pianoforte" sözcüğünün kısaltılmış hâlidir.
- Piyano için eser veren ilk besteci Muzio CELEMENTİ’dir.1773 de henüz on sekiz yaşındayken piyano için üç sonat yazmıştır.
- Piyanoda herhangi bir tuşa bastığımızda keçe ile kaplanmış çekiç o tuşa ait tellere vurur, ardından geri gelir ve çekiç eski konumuna gelmesine rağmen teller titreşmeye devam eder. Bu titreşme bridge (köprü) yoluyla ses tahtasına iletilir ve ses tahtası sesi yükselttikten sonra havaya yayar. Parmak tuştan çekildiğinde damper (titreşim azaltan parça) tellerin titreşmesini durdurur ve sesi keser. Fakat pedallar yardımıyla tuşlardan parmaklar kaldırmasına rağmen sesi uzatmak mümkündür.
- Kuyruklu piyano, konsol piyano olmak üzere farklı türlerde akustik piyanolar bulunmaktadır.
Konsol Piyano (Duvar Piyanosu)
- Tellerin dikey (modern piyano çapraz) olarak bağlandığı dikdörtgen ya da kare şeklinde ayakta duran ses tahtasının korunması amacıyla genellikle duvara yakın tutulan, bu nedenle de duvar piyanosu olarak da adlandırılan konsol piyano kabaca aşağıdaki bölümlerden oluşur: (Burada sadece konsol gibi gözükse de piyanonun genel bölümleri olarak alınabilir)
Mobilya tahtası
Şase (Pik döküm çelik şase)
Ses tahtası (Masif veya lamine)
Teller ve akort çivileri
Pedallar
Klavye (Tuşlar)
Mekanizma bölümü (susturucular, alt mekanik, çekiç bloğu, mekanik balkon)
- Piyano klasik ve caz müzikte yaygın olarak kullanılır. Solo performanslar, ansambl, oda müziği, eşlik, bestecilik ve prova için oldukça uygun bir enstrümandır.

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
