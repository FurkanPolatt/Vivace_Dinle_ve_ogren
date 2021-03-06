// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElectroPInfo1 extends StatefulWidget {
  const ElectroPInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<ElectroPInfo1> {
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
            'Elektronik Piyano',
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
              image: AssetImage('assets/background/epiano.jpg'),
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
                        '''- Teknolojinin geli??mesiyle birlikte m??zikte de hayat?? kolayla??t??rmaya y??nelik ????z??mler ??retilmi??tir. Bu ????z??mlerden baz??lar??, akustik piyanolar?? daha k??????k bir hale getirmek ve sesini kontrol alt??na alabilmek olmu??tur. Merakl??, ara??t??rmac?? ve ??srarc?? yakla????mlar en sonunda 1980???lerin sonlar??nda dijital piyanolar?? ??retmeyi ba??arm????t??r. 
- Akustik piyano yap??s?? itibar??yla ??eki??lerin tele vurmas??yla ortaya ????kan mekanik bir sestir ancak dijital piyanolar da ad??ndan belli oldu??u ??zere daha elektronik sistemin kolayl??klar??ndan yararlanarak elde eder. Bu konuda en dikkat edilen unsur dijital piyanolar??n tu??e konusunda yetersiz kalmas??yd?? ama son birka?? y??lda b??y??k piyano markalar??n??n da el atmas??yla birlikte bu farkl??l??k b??y??k oranda azalt??lm????t??r. 
- Yine akustik piyanolarda kullan??lan ??eki?? sistemi (hammer-action) dijital piyanolarda da kullan??lmakta ve ??o??u dijital piyano modelinde ger??ek tel gerginli??i hissiyat??n?? vermektedir.
- Bir??ok ses bar??nd??rd?????? i??in kullan??m alan?? geni?? olan elektronik piyano, genel olarak bir??ok m??zik t??r??nde kullan??l??r.
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
