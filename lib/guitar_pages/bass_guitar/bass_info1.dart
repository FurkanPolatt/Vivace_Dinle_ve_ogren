// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import 'view_image.dart';

class BassInfo1 extends StatefulWidget {
  const BassInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<BassInfo1> {
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
          opacity: 0.80,
          child: Text(
            'Bas Gitar',
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
              padding: const EdgeInsets.all(15),
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
          height: 370,
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
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      '''- İlk olarak Fender tarafından 1950'li yılların başlarında Fender Precision Bass modeliyle üretilmiştir.
- Çoğunlukla dört teli olan ve kalın ses veren telli bir çalgıdır
- Bas gitar bir türev enstrümandır; her müzik türünün kendine özgü bas enstrümanı vardır.
- Bas gitar, elektrik ve akustik olarak ikiye ayrılır:
- Elektrikli basta tellerden gelen titreşimler manyetikler tarafından elektrik sinyaline çevrilip bu sinyali sese çevirecek olan yükselteçe yollanırken, akustik basta akustik gitar gibi geniş ve oyuk olan gövde tellerden gelen sesi güçlendirip duyulabilir bir seviyeye çıkarır. 
- Bas gitarın sesi, normal gitarlardan daha kalın, kontrbas gitarlardan daha incedir. 
- Normal bir gitardan daha kalın tellere ve daha uzun bir ölçeğe sahip olan bas gitarın gövdesinin elektrik baslarda ön, akustik baslarda yan tarafında ton ve sesi değiştirmeye yarayan bir eşitleyici bulunur. 
- Bas gitarların elektro gitar yükselticilerinden farklı olan, düşük frekanstaki sesleri daha iyi verebilen özel yükselteçleri bulunur.
- Bas gitar, genel olarak rock müzik için kullanılan bas çalgıdır denebilir. Türk müziği için "bas bağlama", klasik yaylılar için "kontrbas", metal üflemeliler için "tuba", ağaç üflemeliler için "kontrfagot", piyanonun sol eli ve benzeri enstrümanlar da icra edilen müzik tarzları için kullanılan bas çalgılardır.
- Bas gitarlar ise daha çok rock, metal, caz, blues, punk ve R&B gibi müzik türlerinde kullanılmaktadır.


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
