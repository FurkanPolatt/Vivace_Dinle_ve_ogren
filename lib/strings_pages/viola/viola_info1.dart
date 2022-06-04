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
                        '''- Viyola, yaylı çalgılar ailesinin ikinci üyesidir ve Alto' da denir. 
- 7. yüzyılda İngiltere’de icat edildiği ileri sürüldüğü gibi, aynı yüzyılda İtalya’da bulunduğu da iddia edilmektedir. 
- Fiziki yapısı kemana çok benzer. Keman ailesi müzik aletlerinde orta sese sahiptir ve keman ile çello arasında yer alır. 
- Gövde uzunluğu 41 – 45 cm civarındadır.
- Viyolanın da dört teli vardır ve tam beşli aralıklarla DO, SOL, RE, LA olarak akort edilir.
- Viyola teknik açıdan da kemana çok benzer. Parmak ve yay tekniği, pozisyonlar ve değişik ses renklerini elde etme yöntemleri kemandan farksızdır. Fakat viyolanın genelde koyu, derin ve can alıcı bir ses rengi vardır.
- Genellikle viyolaya, orkestrada armoni eşliğinin orta partilerini seslendirme görevi verilir çünkü viyolanın ses alanı, orkestranın ses alanının tam ortasındadır. Kimi zaman özelliklerinden faydalanmak için bu çalgıya karakteristik ezgileri seslendirme görevi de verilir.
- Viyola bazen çağdaş popüler müzikte, çoğunlukla avangardda kullanılır.
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
