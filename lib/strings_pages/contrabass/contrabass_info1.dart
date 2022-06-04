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
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        '''- Kontrbas, keman ailesindendir ve yaylılar grubunun en kalın sesli çalgısıdır. 
- Kontrbas Violone adı verilen bir Rönesans çalgısından türemiştir. 
- 16. yüzyıldan 18. yüzyıla kadar bir değişim süreci geçirmiştir. 
- 18. yüzyılın ikinci yarısında bugünkü biçimini almıştır. 
- 4 telli ve 5 telli olmak üzere iki türü bulunur. 
- 5 telli olan kontrbasa senfonik orkestra eserlerinin icrasında sık olarak ihtiyaç duyulmaktadır. 
- Kontrbasın, özel bir tür çelikten yapılmış dört teli vardır. 
- Bunun yanında yalnız bağırsak ya da bağırsak üzerine çelik sargı veya başka yapay malzemeler kullanılarak hazırlanmış teller de bulunabilmektedir. 
- Teller Mi, La, Re, Sol olarak akort edilir. 
- Yay kullanılarak ya da parmaklar yardımıyla çalınır. 
- Diğer yaylı çalgılardan farklı olarak iki çeşit yay modeli bulunmaktadır. Bunlar Alman ve Fransız olarak adlandırılmaktadır. Alman modelde yay yan taraftan kavranarak tutulurken, Fransız modelde yay yukarıdan tutulur. 
- Çok büyütülmüş bir keman görünümündedir. 
- Boyu 1,80 metre, eni 60 cm olan kontrbas bu boyutları nedeniyle ayakta ya da yüksek bir tabureye oturularak çalınır. 
- Senfonik orkestraların, caz, pop ve rock müzik topluluklarının ana çalgılarından biridir. Kontrbas, özellikle caz müziğin vazgeçilmez çalgısı olmuştur. 
- Bu enstrüman için eser yazmış olan bestecilerin başında; K.D.von Dittesdorf, G.B.Vanhal, J.M.Sperger, V.Pichl, A.F.Hoffmeister, G.Bottesini, D.Dragonetti, A.Misek, S.Koussevitzky gelmektedir.
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
