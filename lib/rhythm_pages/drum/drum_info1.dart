// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrumInfo1 extends StatefulWidget {
  const DrumInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<DrumInfo1> {
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
            'Akustik Davul',
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
              image: AssetImage('assets/background/drum.jpg'),
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
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        '''- Bateri ritim tutmaya yarayan, zil ve davullardan olu??an, ??alarken ak??c??, dengeli ve koordineli olmay?? gerektiren bir m??zik aletidir. 
- Perk??syonlar??n yani vurmal?? ??alg??lar??n en pop??ler ??yelerinden birisidir. 
- ??alarken h??z ve ??evikli??in yan??nda el ve ayak koordinasyonu ??ok ??nemlidir.
- Bateri ah??ap bir materyal olan bagetlerle bateristler taraf??ndan ??al??n??r.
- Baterinin tarih??esi asl??nda davulun bulunmas??yla ba??lar. Davul ise tarihteki en eski ??alg??lardan biridir. Eski medeniyetlerin ??e??itli t??renlerinde veya sava??a giderken davullar kullan??l??rd??. 
- Bateri kelimesi Frans??zca bir kelime olan ???batterie??? den gelmektedir. 
- 18. Y??zy??l??? da bateri gibi toplu ??alg??lar yerine insanlar davulu ayr??, trampeti ayr?? ve zilleri ayr?? ??al??yordu. 
- 19.Y??zy??l??? a kadar baterinin geli??imi devam etti. 
- ??nce iki davuldan olu??an setler sonra da pedallar eklendi. 
- Pedallar sayesinde bateri ??alarken ayaklar??m??z?? kullanma imk??n?? da olu??tu.
- Genellikle baterinin yap??s??nda 5 par??a davul ve 3 par??a zil bulunur. 
- 5 par??a davul 1 high tom, 1 mid tom, 1 floor tom, trampet ve pes (bass drum) davuldan olu??ur. 
- 3 par??a zil tak??m?? ise crash, hi-hat ve ride ismindedir. 
- Bu standartlar??n d??????nda bateristler m??zik t??r??ne veya kendi tarz??na g??re istedi??i modifikasyonlar?? yapabilir. 
- Davullar?? sabitlemek i??in stand denilen sehpalar kullan??l??r. 
- Kick davulunu kullanmak i??in single veya twin pedallar vard??r. 
- Davullar?? ??almak i??in ise baget, f??r??a veya tokmaktan faydalan??l??r. 
- De??i??ik uzunluk ve kal??nl??kta olan bagetler ah??ap d??????nda karbon veya metal de olabilmektedir.
- Bateri rock, jazz, blues, pop ve metal m??zik t??rlerinde daha ??ok kullan??l??r.
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
