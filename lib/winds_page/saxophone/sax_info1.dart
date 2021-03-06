// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SaxInfo1 extends StatefulWidget {
  const SaxInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<SaxInfo1> {
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
            'Saksafon',
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
      padding: const EdgeInsets.all(8),
      height: _boxHeight,
      margin: EdgeInsets.only(top: _boxHeight / 5),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            image: DecorationImage(
              image: AssetImage('assets/background/sax.jpg'),
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
                        '''- Saksafon ??o??unlukla pirin??ten yap??lan, koni ve ???S??? bi??iminde olan, a????z??ndaki kam????la ses ????karan bir ??alg??d??r.
- Saksafon genellikle Pop-m??zi??i, ???big band??? m??zi??i ve caz ile ili??kilendirilse de, ??nceleri klasik bat?? m??zi??i ve ordu m??zi??i ??alg??s?? olarak tasarlanm????t??r.
- Hem ellerin hem de hem de a??z??n kullan??larak ??al??nd?????? bir m??zik aletidir. 
- Saksafon ??al??n??rken, sol el ??stte ve sa?? el alttad??r. Ba??parmak arka k??s??mdan destek al??r. Bu ??ekilde saksafon sabit bir hale getirilerek, nefes ve nota uyumuyla ??al??n??r.
- Adolphe Sax, saksafonu olu??turmaya ba??lad??????nda ana fikri ya da amac??, pirincin g??c??n?? ve bir tahta r??zg??rl??????n ton kalitesini i??erecek bir ara?? yapmakt??r. Temelde hem pirin?? hem de nefesli ??alg??lar??n senfonik seslerini bir araya getirmek istemi??tir. Bu hedefi g??z ??n??nde bulundurarak b??y??k bir saksafon, ??ok belirgin bir konik ??ekle sahip olan ilk eseridir ve bu esere 20 Mart 1864 tarihinde saksafon denmi??tir.
- K??????kten b??y????e saksafon t??rleri ve s??ralan?????? ??u ??ekildedir; Sopranino, C Soprano, Soprano, F Mezzo Soprano, Alto, C ??? Ezgi, Tenor, Bariton,Soprano, Bas, Kontrbas, Subkontrbas. 
- G??n??m??zde en ??ok alto, bariton, tenor saksafon kullan??l??r.
- Saksafon genelde caz m??zikte kullan??m?? yayg??nd??r.
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
