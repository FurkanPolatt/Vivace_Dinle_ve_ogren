// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElectroInfo1 extends StatefulWidget {
  const ElectroInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<ElectroInfo1> {
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
      padding: EdgeInsets.all(5),
      height: _boxHeight,
      margin: EdgeInsets.only(top: _boxHeight / 5),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            image: DecorationImage(
              image: AssetImage('assets/background/electro_guitar.jpg'),
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
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '''- 1900' l?? y??llar??n sonlar??nda Orville Gibson oval ses delikli archtop gitarlar?? yapt??. 
- 1920??? lerin erken d??nemlerinde tasar??mc?? Lloyd Loar, Gibson??? a kat??ld?? ve archtop caz gitar?? bug??nk?? f-delikli tan??d??k formuna soktu.
- 1920 lerin sonuna do??ru caz gitarlara manyetiklerin eklenmesi ile elektro gitar do??du.
- Elektro gitar veya elektronik gitar, sesini manyetikleri arac??l?????? ile elektrik ak??m??na d??n????t??ren ve bir amplifikat??r ile bu ak??mdan ses elde edilmesine olanak tan??yan gitar t??r??d??r.
- Olu??turdu??u sinyalin de??i??tirilebilir olmas?? ve y??ksek bir sese sahip olmas?? nedeniyle, kullan??m alan?? ??ok geni??lemi?? bir gitar t??r??d??r.
- Elektro gitar bo?? g??vdeli ve kat?? g??vdeli olmak ??zere 2 gruba ayr??l??r:
a. Bo?? G??vdeli: 
- Bir y??kselticiye gereksinim duymadan, sesin gitardaki bo??lukta yank??lanarak zengin bir ton ????karmas??yla ??al??nan gitarlard??r. 
- Bu tip g??vdelerde keman ailesindeki gibi f delikleri bulunabilir. 
- Bu tarz g??vdeyi 1890'da tasarlayan ve d??nyaya tan??tan Gibson firmas??d??r.
b. Kat?? G??vdeli
- Kat?? g??vdeli gitarlar; masif g??vdeye sahip, sesin do??al yollardan y??kselmesine izin vermeyen tipte g??vdelere sahip gitarlard??r. 
- Y??ksek ????k???? g??c?? olan ses kaynaklar??n??n oldu??u yerlerde geri beslemeyi en aza indirgeyen g??vde t??r??d??r.
- Elektro gitarlar daha ??ok rock ve metal gibi sert m??zik t??rleri ile an??lsa da g??n??m??zde pop m??zik t??r??nde dahi kullan??labilmektedir.
- Kendi i??inde 9???a ayr??l??r:
1. Amerikan elektro gitar markalar??: B.C Rich, Dean, PRS , Fender, Gibson???
2. Japon elektro gitar markalar??: Aria, ESP, Ibanez, Yamaha???
3. Kore elektro gitar markalar??: Cort
4. Kanada elektro gitar markalar??: Eastwood Guitars, Godin Guitars
5. ??talyan elektro gitar markalar??: Eko
6. Alman elektro gitar markalar??: Steinberger, Gretsch, H??fner
7. ??ek elektro gitar markalar??: Ashton, Crafter
8. Avustralya elektro gitar markalar??: Tatra, Czerny
9. Bel??ika elektro gitar markalar??: Stagg
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
