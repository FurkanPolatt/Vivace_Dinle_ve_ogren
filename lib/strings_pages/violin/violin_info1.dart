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
                        '''- Keman (veya viyolon), viyola ve viyolonselin de bulunduğu violin ailesinin en yüksek tondan çalan, en küçük üyesidir. 
- Günümüz anlamdaki keman ilk olarak 14. yüzyılda Kuzey İtalya'da ortaya çıktı. 
- Bu dönemden sonra keman Avrupa'da yayıldı.
- İlk keman yapımcılarının Rebec, Rönesans da Fer tarafından Orta Çağ'da İtalya'da Lira da Braci, Fransa'da Viel adlarıyla kullanılan yaylı çalgılar Keman'ın atası sayılır. 
- 16. ve 17. yüzyıldaki keman yapım ustaları Nicolo Amati, Paolo Maggini, Giuseppe Guarneru, Antonio Stradivarius kemana son şeklini vermişlerdir. 
- Keman asıl biçimi korumakla birlikte 19. yüzyılda bazı değişikliklere uğradı. Çağdaş kemanda gövde ve sap daha uzun, köprü daha yüksektir.
- Keman kelimesi, Ortacağ Latincesindeki “vitula” kelimesinden gelmektedir.
- Almanca Geige, Fransızca Violon, İngilizce Violin, İtalyanca Violino'dur.
- Dört teli vardır. 
- Akort sesleri pesten tize sol, re, la ve mi'dir.
- Yayla çalınan telli bir çalgıdır.
- Keman yayına arşe denir.
- Keman yayı genellikle 170 ile 200 saç teli içermektedir. Keman yayı naylon ve at saçı dahil olmak üzere çeşitli malzemelerden oluşmaktadır.
- Ayrıca yayını düzgünleştirmek ve sesi güzelleştirmek amacıyla arşeye reçine adı verilen madde sürülür. Reçine bala benzeyen sarı renkli katı bir maddedir.
- Solo ve eşlik görevi verilir (özellikle bir solo çalgıdır).
- Uzunluğu 60 cm'dir.
- Keman asıl olarak Batı’da ortaya çıkan bir enstrümandır. Bunun için genelde Batı Müziği’nde kullanılmaktadır. Keman çok yönlü bir enstrüman olduğundan dolayı pek bi’ tür kısıtlaması yoktur. Klasik müzikten tutun da pop müziğe, metal müziğe kadar kullanım alanları mevcuttur.

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
                //           Text('Tamamını oku'),
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
