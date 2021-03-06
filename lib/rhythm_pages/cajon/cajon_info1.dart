// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CajonInfo1 extends StatefulWidget {
  const CajonInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<CajonInfo1> {
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
            'Cajon',
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
              image: AssetImage('assets/background/cjn.jpg'),
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
                        '''- Caj??n, ba??lang????ta Peru'dan gelen, ??n veya arka y??zleri eller, parmaklar veya bazen f??r??alar, tokmaklar veya ??ubuklar gibi aletlerle tokatlayarak ??al??nan kutu ??eklinde bir vurmal?? ??alg??d??r. 
- Cajones esas olarak Afro-Perulu m??zi??inde ??al??n??r, ancak flamenkoya da girmi??tir.
- Cajon, 18. y??zy??l??n sonlar??ndan itibaren en fazla kullan??lan Afrika-Peru k??kenli m??zik ??alg??s??d??r. Amerika???daki m??zik performanslar??nda yayg??n olarak kullan??lan bir ??alg?? olmas??na ra??men, ???? ve Bat?? Amerika???daki Afrika k??keninin, ??zellikle Peru???nun cajonlar??n kayna???? oldu??u d??????n??lmektedir.
- Cajonun be?? y??zeyi i??in genellikle 1,3 cm???den 1,9 cm???e de??i??en kontra plaklar kullan??l??r. 
Di??er y??zey yani vurulan ba??l??ca y??zey (tapa) i??in ise daha ince kontra plaklar kullan??l??r. 
- Vurulan bu ba??l??ca y??zeyin (tapa) tam kar????s??nda yani cajonun arka y??zeyinde ise bir ses deli??i bulunur. 
- ??st kenarlar ??o??u zaman serbest / birle??ik olmayan ??ekilde b??rak??l??r. 
- ??alg??c??, kutunun ??zerine bacaklar??n?? a??arak oturur ve ona bir a????yla e??im verirken, bir yandan da dizlerinin aras??ndan cajonun ba??l??ca y??zeyine (tapa) vurur. 
- Modern cajonlar??n kau??uk ayaklar?? olabilmektedir ve ??st taraf??nda vurmal?? ses t??n??s??n?? ayarlay??c?? birka?? vidas?? vard??r.
- Cajon en fazla K??ba m??ziklerinde, Peru sahil m??ziklerinde ve (Afrikan-??spanyol-And Da??lar?? m??ziklerinin etkisiyle olu??mu??) Musica Criolla denen m??zik t??rlerinde duyulmaktad??r: Tondero, Zamacueca ve Peru Walsi, modern Flamenko ve Rumba???n??n baz?? modern t??rlerinde cajon yayg??n olarak kullan??l??r.
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
