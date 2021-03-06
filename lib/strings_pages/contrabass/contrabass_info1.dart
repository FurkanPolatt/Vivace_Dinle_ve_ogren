// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CtbInfo1 extends StatefulWidget {
  const CtbInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<CtbInfo1> {
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
            'Kontrbass',
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
              image: AssetImage('assets/background/ctb.jpg'),
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
                        '''- Kontrbas, keman ailesindendir ve yayl??lar grubunun en kal??n sesli ??alg??s??d??r. 
- Kontrbas Violone ad?? verilen bir R??nesans ??alg??s??ndan t??remi??tir. 
- 16. y??zy??ldan 18. y??zy??la kadar bir de??i??im s??reci ge??irmi??tir. 
- 18. y??zy??l??n ikinci yar??s??nda bug??nk?? bi??imini alm????t??r. 
- 4 telli ve 5 telli olmak ??zere iki t??r?? bulunur. 
- 5 telli olan kontrbasa senfonik orkestra eserlerinin icras??nda s??k olarak ihtiya?? duyulmaktad??r. 
- Kontrbas??n, ??zel bir t??r ??elikten yap??lm???? d??rt teli vard??r. 
- Bunun yan??nda yaln??z ba????rsak ya da ba????rsak ??zerine ??elik sarg?? veya ba??ka yapay malzemeler kullan??larak haz??rlanm???? teller de bulunabilmektedir. 
- Teller Mi, La, Re, Sol olarak akort edilir. 
- Yay kullan??larak ya da parmaklar yard??m??yla ??al??n??r. 
- Di??er yayl?? ??alg??lardan farkl?? olarak iki ??e??it yay modeli bulunmaktad??r. Bunlar Alman ve Frans??z olarak adland??r??lmaktad??r. Alman modelde yay yan taraftan kavranarak tutulurken, Frans??z modelde yay yukar??dan tutulur. 
- ??ok b??y??t??lm???? bir keman g??r??n??m??ndedir. 
- Boyu 1,80 metre, eni 60 cm olan kontrbas bu boyutlar?? nedeniyle ayakta ya da y??ksek bir tabureye oturularak ??al??n??r. 
- Senfonik orkestralar??n, caz, pop ve rock m??zik topluluklar??n??n ana ??alg??lar??ndan biridir. Kontrbas, ??zellikle caz m??zi??in vazge??ilmez ??alg??s?? olmu??tur. 
- Bu enstr??man i??in eser yazm???? olan bestecilerin ba????nda; K.D.von Dittesdorf, G.B.Vanhal, J.M.Sperger, V.Pichl, A.F.Hoffmeister, G.Bottesini, D.Dragonetti, A.Misek, S.Koussevitzky gelmektedir.
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
