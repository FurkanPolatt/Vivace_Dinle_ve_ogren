// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MelodicaInfo1 extends StatefulWidget {
  const MelodicaInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<MelodicaInfo1> {
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
            'Melodika',
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
              image: AssetImage('assets/background/melodica2.jpg'),
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
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '''- Melodika, üflemeli ve tuşlu bir müzik enstrümanıdır. 
- Bu enstrüman ağızla üflenir ve tuşlara basılarak ses çıkarılır. 
- Flüte benzer ama tek bir tuşa basınca o nota çıkar.
- Melodikada her tuş bir notaya karşılık gelmektedir.
- Notalar “fa” ile başlar ve “do” ile biter. 
- Parmaklar numaralandırılır ve baş parmak 1, işaret parmağı 2, orta parmak 3, yüzük parmağı 4, serçe parmağı da 5 olarak adlandırılır.
- Tuş adetine göre adlandırılmış 2 tür melodika bulunmaktadır:
1.	13 tuşlu melodika

- En basit melodika çeşididir. Blok flüte en çok benzeyen tür olup çalan kişinin enstrümanı elinde tutması gerekir. 13 tuşlu melodikalar hortumla çalınamazlar.

2.	- 25, 32 veya 37 tuşlu melodika
- Birbirinden farkı sadece tuş sayısı olan bu üç tip melodikaların özelliği 13 tuşluya göre daha fazla farklı sesin çıkarılabilmesi ve düz bir zemine konulup hortum ile üflenerek çalınabilmesidir. Çoğunlukla üfleme hortumu ile birlikte satılmaktadır.
- Yeni başlayanlar uzun hortumuyla kullanırlar. 
- Sol elle tutulur ve sağ elle üzerindeki (piyano tuşları gibi) tuşlarına basılarak çalınır. 
- Arkasında tutacak sapı bulunur.

- Müzik eğitimi için ideal bir çalgıdır. Melodika genelde ilköğretim okullarında eğitim amaçlı olarak müzik derslerinde çalınmaktadır. 

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
