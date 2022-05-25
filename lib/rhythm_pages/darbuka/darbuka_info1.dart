// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import '../../guitar_pages/bass_guitar/view_image.dart';

class DarbukaInfo1 extends StatefulWidget {
  const DarbukaInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<DarbukaInfo1> {
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
            'Darbuka',
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
                      '''- Darbuka veya dümbelek, özellikle Orta Doğu'da ve Balkanlarda kullanılan vurmalı bir çalgıdır.
- Türk musikisinde usul tutmaya yarayan bir alettir. 
- İki tarafı da açık bir çömleğin bir tarafına deri kaplayarak yapılır. 
- Parmaklarla vurularak çalınır.
- Milattan önceki dönemde günümüz darbukasına benzer çalgılar, çeşitli biçim ve büyüklüklerde Anadolu, Mezopotamya ve Orta Asya uygarlıklarında kullanılmışlardır. Daha sonraki süreçler içinde değişip gelişerek yine aynı coğrafyalar içinde kullanılmıştır.
- Çömlekten yapılanlarına bugün «dümbelek» denmektedir, darbuka sözü ise tenekeden yapılanlar için kullanılıyor. 
- Anadolu’da daha çok kadınlar tarafından düğünlerde ve özellikle kendi aralarında düzenledikleri eğlencelerde kullandıkları ve halk arasında ‘’dümbelek, dümbek, cümlek, küp’’ gibi adlarla çalınan sazlardan fazla farklı olmayıp, sadece gövde kısmı ağaç ve ya metalden yapilip derisi ise vidalar yardımı ile gerdirilen bir vurgulu sazdır. 
- Daha ziyade oyun havalarında çalınır. Dümbelekte olduğu gibi parmak uçlarıyla diz üzerinde vurularak çalınır.	
- Türk sanat ve Türk halk müziğinde çalınmaktadır.

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
