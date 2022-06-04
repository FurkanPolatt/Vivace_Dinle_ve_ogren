// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PianoInfo1 extends StatefulWidget {
  const PianoInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<PianoInfo1> {
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
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            image: DecorationImage(
              image: AssetImage('assets/background/piano.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
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
          child: Material(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            color: Colors.grey[850],
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
                Divider(color: Colors.white54, thickness: 1, height: 1),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
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
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
