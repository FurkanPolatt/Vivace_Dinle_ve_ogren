// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViolaInfo1 extends StatefulWidget {
  const ViolaInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<ViolaInfo1> {
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
            'Viyola',
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
              image: AssetImage('assets/background/viola.jpg'),
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
                        '''- Viyola, yayl?? ??alg??lar ailesinin ikinci ??yesidir ve Alto' da denir. 
- 7. y??zy??lda ??ngiltere???de icat edildi??i ileri s??r??ld?????? gibi, ayn?? y??zy??lda ??talya???da bulundu??u da iddia edilmektedir. 
- Fiziki yap??s?? kemana ??ok benzer. Keman ailesi m??zik aletlerinde orta sese sahiptir ve keman ile ??ello aras??nda yer al??r. 
- G??vde uzunlu??u 41 ??? 45 cm civar??ndad??r.
- Viyolan??n da d??rt teli vard??r ve tam be??li aral??klarla DO, SOL, RE, LA olarak akort edilir.
- Viyola teknik a????dan da kemana ??ok benzer. Parmak ve yay tekni??i, pozisyonlar ve de??i??ik ses renklerini elde etme y??ntemleri kemandan farks??zd??r. Fakat viyolan??n genelde koyu, derin ve can al??c?? bir ses rengi vard??r.
- Genellikle viyolaya, orkestrada armoni e??li??inin orta partilerini seslendirme g??revi verilir ????nk?? viyolan??n ses alan??, orkestran??n ses alan??n??n tam ortas??ndad??r. Kimi zaman ??zelliklerinden faydalanmak i??in bu ??alg??ya karakteristik ezgileri seslendirme g??revi de verilir.
- Viyola bazen ??a??da?? pop??ler m??zikte, ??o??unlukla avangardda kullan??l??r.
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
