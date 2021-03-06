// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViolinInfo1 extends StatefulWidget {
  const ViolinInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<ViolinInfo1> {
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
            'Keman',
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
              image: AssetImage('assets/background/violin.jpg'),
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
                        '''- Keman (veya viyolon), viyola ve viyolonselin de bulundu??u violin ailesinin en y??ksek tondan ??alan, en k??????k ??yesidir. 
- G??n??m??z anlamdaki keman ilk olarak 14. y??zy??lda Kuzey ??talya'da ortaya ????kt??. 
- Bu d??nemden sonra keman Avrupa'da yay??ld??.
- ??lk keman yap??mc??lar??n??n Rebec, R??nesans da Fer taraf??ndan Orta ??a??'da ??talya'da Lira da Braci, Fransa'da Viel adlar??yla kullan??lan yayl?? ??alg??lar Keman'??n atas?? say??l??r. 
- 16. ve 17. y??zy??ldaki keman yap??m ustalar?? Nicolo Amati, Paolo Maggini, Giuseppe Guarneru, Antonio Stradivarius kemana son ??eklini vermi??lerdir. 
- Keman as??l bi??imi korumakla birlikte 19. y??zy??lda baz?? de??i??ikliklere u??rad??. ??a??da?? kemanda g??vde ve sap daha uzun, k??pr?? daha y??ksektir.
- Keman kelimesi, Ortaca?? Latincesindeki ???vitula??? kelimesinden gelmektedir.
- Almanca Geige, Frans??zca Violon, ??ngilizce Violin, ??talyanca Violino'dur.
- D??rt teli vard??r. 
- Akort sesleri pesten tize sol, re, la ve mi'dir.
- Yayla ??al??nan telli bir ??alg??d??r.
- Keman yay??na ar??e denir.
- Keman yay?? genellikle 170 ile 200 sa?? teli i??ermektedir. Keman yay?? naylon ve at sa???? dahil olmak ??zere ??e??itli malzemelerden olu??maktad??r.
- Ayr??ca yay??n?? d??zg??nle??tirmek ve sesi g??zelle??tirmek amac??yla ar??eye re??ine ad?? verilen madde s??r??l??r. Re??ine bala benzeyen sar?? renkli kat?? bir maddedir.
- Solo ve e??lik g??revi verilir (??zellikle bir solo ??alg??d??r).
- Uzunlu??u 60 cm'dir.
- Keman as??l olarak Bat?????da ortaya ????kan bir enstr??mand??r. Bunun i??in genelde Bat?? M??zi??i???nde kullan??lmaktad??r. Keman ??ok y??nl?? bir enstr??man oldu??undan dolay?? pek bi??? t??r k??s??tlamas?? yoktur. Klasik m??zikten tutun da pop m??zi??e, metal m??zi??e kadar kullan??m alanlar?? mevcuttur.

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
                //           Text('Tamam??n?? oku'),
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
}
