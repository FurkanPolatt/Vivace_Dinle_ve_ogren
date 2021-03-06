// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BassInfo1 extends StatefulWidget {
  const BassInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<BassInfo1> {
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
              image: AssetImage('assets/background/bass_guitar.jpg'),
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
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        '''- ??lk olarak Fender taraf??ndan 1950'li y??llar??n ba??lar??nda Fender Precision Bass modeliyle ??retilmi??tir.
- ??o??unlukla d??rt teli olan ve kal??n ses veren telli bir ??alg??d??r
- Bas gitar bir t??rev enstr??mand??r; her m??zik t??r??n??n kendine ??zg?? bas enstr??man?? vard??r.
- Bas gitar, elektrik ve akustik olarak ikiye ayr??l??r:
- Elektrikli basta tellerden gelen titre??imler manyetikler taraf??ndan elektrik sinyaline ??evrilip bu sinyali sese ??evirecek olan y??kselte??e yollan??rken, akustik basta akustik gitar gibi geni?? ve oyuk olan g??vde tellerden gelen sesi g????lendirip duyulabilir bir seviyeye ????kar??r. 
- Bas gitar??n sesi, normal gitarlardan daha kal??n, kontrbas gitarlardan daha incedir. 
- Normal bir gitardan daha kal??n tellere ve daha uzun bir ??l??e??e sahip olan bas gitar??n g??vdesinin elektrik baslarda ??n, akustik baslarda yan taraf??nda ton ve sesi de??i??tirmeye yarayan bir e??itleyici bulunur. 
- Bas gitarlar??n elektro gitar y??kselticilerinden farkl?? olan, d??????k frekanstaki sesleri daha iyi verebilen ??zel y??kselte??leri bulunur.
- Bas gitar, genel olarak rock m??zik i??in kullan??lan bas ??alg??d??r denebilir. T??rk m??zi??i i??in "bas ba??lama", klasik yayl??lar i??in "kontrbas", metal ??flemeliler i??in "tuba", a??a?? ??flemeliler i??in "kontrfagot", piyanonun sol eli ve benzeri enstr??manlar da icra edilen m??zik tarzlar?? i??in kullan??lan bas ??alg??lard??r.
- Bas gitarlar ise daha ??ok rock, metal, caz, blues, punk ve R&B gibi m??zik t??rlerinde kullan??lmaktad??r.


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
