// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClairnetInfo1 extends StatefulWidget {
  const ClairnetInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<ClairnetInfo1> {
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
            'Klarnet',
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
              image: AssetImage('assets/background/clairnet2.jpg'),
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
                        '''- Klarnet, sert ve dayan??kl?? a??a??lardan genellikle de abanoz a??ac??ndan yap??lan ??flemeli bir ??alg?? t??r??d??r. 
- Klarnet ??alabilmek i??in kam???? ve kam?????? beke sabitleyip d??zg??n frekanslarda titre??im olu??mas?? i??in bilezi??e ihtiya?? vard??r. 
- Klarnetin bir arada durmas?? i??in par??alar??n u?? k??s??mlar??nda genellikle mantarlar bulunur. Bu par??alar??n tamam??n??n birle??tirilmi?? haline klarnet denilmektedir. 
- Klarnetin i??i silindirik yap??dad??r. 
- G??vdesi ??zerinde delikler, halkalar ve metal tu??lar bulunmaktad??r. 
- Yap??s?? silindir bir boru ??eklindedir ve alt k??sm??na indik??e hafif??e kal??nla??an bir kalakla son bulur. 
- Klarnet, tarihi 19. y??zy??lda Chalumeau (??al??mo) ad??yla orkestralarda icra edilen nefesli saz klarnetin atas??d??r. Frans??zca'dan gelen bu isim nefesli sazlar??n genel ad??d??r. 
- Ayn?? y??zy??lda Denner adl?? ??alg?? yap??m ustas?? ??al??mo???yu geli??tirerek bug??nk?? sisteme do??ru ilk ad??m?? atm????t??r. 
- 18. y??zy??lda ke??fedilen enstr??man??n orkestraya d??hil edilmesi 1750 y??l??nda olmu??tur.
- 1800???l?? y??llarda klarnetin oda orkestralar??nda yayg??nla??mas??nda Mozart?????n rol??n??n b??y??k oldu??u bilinmektedir. 
- Klarnet temel olarak 5 par??an??n birle??iminden olu??maktad??r. Bunlar: Bek (A????zl??k), Baril (F?????? veya barel), ??st G??vde, Alt G??vde (??al??mo), Kalak (Pavillon) Klarnet kalabal??k bir aileye sahiptir. 
- ??e??itleri ??unlard??r; Sol Klarnet (G), Mi Bemol Klarnet (Eb), Bas Klarnet , La Klarnet (A) , Do Klarnet, Si Bemol Klarnet (Bb), Alto Klarnet (Mi Bemol), Kontrabas Klarnet, La Bemol Klarnettir. 
- T??rkiye???de en yay??n olarak kullan??lan ??e??idi ise sol (G) klarnettir. 
- T??m klarnet ??e??itlerinde parmak pozisyonlar??n??n isimleri ve parmak pozisyonlar?? kullan??m??n?? g??steren i??aretler ayn?? oldu??u gibi, ses sahalar??n??n g??sterili??i ve nota yaz??mlar?? da ayn??d??r. Sadece duyulan sesin piyanodaki kar????l??????na g??re klarnetler isimlendirilir ve transpozisyon yap??larak seslendirme yap??l??r. 
- Birbirinden farkl?? bir??ok m??zik t??r??nde kullan??lan klarnet; caz m??zikten arabesk m??zi??e kadar, klasik m??zik, T??rk m??zi??i, Bat?? m??zi??i gibi m??zik t??rlerinde kullan??labilen bir m??zik aletidir.

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
