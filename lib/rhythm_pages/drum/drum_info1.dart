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
                  'Hakkında',
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
                        '''- Bateri ritim tutmaya yarayan, zil ve davullardan oluşan, çalarken akıcı, dengeli ve koordineli olmayı gerektiren bir müzik aletidir. 
- Perküsyonların yani vurmalı çalgıların en popüler üyelerinden birisidir. 
- Çalarken hız ve çevikliğin yanında el ve ayak koordinasyonu çok önemlidir.
- Bateri ahşap bir materyal olan bagetlerle bateristler tarafından çalınır.
- Baterinin tarihçesi aslında davulun bulunmasıyla başlar. Davul ise tarihteki en eski çalgılardan biridir. Eski medeniyetlerin çeşitli törenlerinde veya savaşa giderken davullar kullanılırdı. 
- Bateri kelimesi Fransızca bir kelime olan “batterie” den gelmektedir. 
- 18. Yüzyıl’ da bateri gibi toplu çalgılar yerine insanlar davulu ayrı, trampeti ayrı ve zilleri ayrı çalıyordu. 
- 19.Yüzyıl’ a kadar baterinin gelişimi devam etti. 
- Önce iki davuldan oluşan setler sonra da pedallar eklendi. 
- Pedallar sayesinde bateri çalarken ayaklarımızı kullanma imkânı da oluştu.
- Genellikle baterinin yapısında 5 parça davul ve 3 parça zil bulunur. 
- 5 parça davul 1 high tom, 1 mid tom, 1 floor tom, trampet ve pes (bass drum) davuldan oluşur. 
- 3 parça zil takımı ise crash, hi-hat ve ride ismindedir. 
- Bu standartların dışında bateristler müzik türüne veya kendi tarzına göre istediği modifikasyonları yapabilir. 
- Davulları sabitlemek için stand denilen sehpalar kullanılır. 
- Kick davulunu kullanmak için single veya twin pedallar vardır. 
- Davulları çalmak için ise baget, fırça veya tokmaktan faydalanılır. 
- Değişik uzunluk ve kalınlıkta olan bagetler ahşap dışında karbon veya metal de olabilmektedir.
- Bateri rock, jazz, blues, pop ve metal müzik türlerinde daha çok kullanılır.
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
