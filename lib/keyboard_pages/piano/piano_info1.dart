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
                  'Hakk??nda',
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
                        '''- Floransal?? Bartolomeo Cristofori 1711 y??l??nda ???Piyano e forte??? yani ???hem hafif hem kuvvetli ??al??nabilir??? adl?? yeni bir m??zik aleti icat etti. 
- "Piyano" s??zc?????? ise ??talyanca ad?? olan "pianoforte" s??zc??????n??n k??salt??lm???? h??lidir.
- Piyano i??in eser veren ilk besteci Muzio CELEMENT?????dir.1773 de hen??z on sekiz ya????ndayken piyano i??in ???? sonat yazm????t??r.
- Piyanoda herhangi bir tu??a bast??????m??zda ke??e ile kaplanm???? ??eki?? o tu??a ait tellere vurur, ard??ndan geri gelir ve ??eki?? eski konumuna gelmesine ra??men teller titre??meye devam eder. Bu titre??me bridge (k??pr??) yoluyla ses tahtas??na iletilir ve ses tahtas?? sesi y??kselttikten sonra havaya yayar. Parmak tu??tan ??ekildi??inde damper (titre??im azaltan par??a) tellerin titre??mesini durdurur ve sesi keser. Fakat pedallar yard??m??yla tu??lardan parmaklar kald??rmas??na ra??men sesi uzatmak m??mk??nd??r.
- Kuyruklu piyano, konsol piyano olmak ??zere farkl?? t??rlerde akustik piyanolar bulunmaktad??r.
Konsol Piyano (Duvar Piyanosu)
- Tellerin dikey (modern piyano ??apraz) olarak ba??land?????? dikd??rtgen ya da kare ??eklinde ayakta duran ses tahtas??n??n korunmas?? amac??yla genellikle duvara yak??n tutulan, bu nedenle de duvar piyanosu olarak da adland??r??lan konsol piyano kabaca a??a????daki b??l??mlerden olu??ur: (Burada sadece konsol gibi g??z??kse de piyanonun genel b??l??mleri olarak al??nabilir)
Mobilya tahtas??
??ase (Pik d??k??m ??elik ??ase)
Ses tahtas?? (Masif veya lamine)
Teller ve akort ??ivileri
Pedallar
Klavye (Tu??lar)
Mekanizma b??l??m?? (susturucular, alt mekanik, ??eki?? blo??u, mekanik balkon)
- Piyano klasik ve caz m??zikte yayg??n olarak kullan??l??r. Solo performanslar, ansambl, oda m??zi??i, e??lik, bestecilik ve prova i??in olduk??a uygun bir enstr??mand??r.

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
