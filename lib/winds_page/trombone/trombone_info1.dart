// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TromboneInfo1 extends StatefulWidget {
  const TromboneInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<TromboneInfo1> {
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
            'Trombon',
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
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: _boxHeight,
        margin: EdgeInsets.only(top: _boxHeight / 5),
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              image: DecorationImage(
                image: AssetImage('assets/background/trmbn.jpg'),
                fit: BoxFit.cover,
              ),
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
                        '''- Trombon, ??flemeli ve bak??r nefesli ??alg??lar grubunda bulunan bir ??alg?? ??e??ididir. 
- Fincan bi??imli bir a????zl????a dayanan dudaklar??n titre??mesiyle ses ????karmaktad??r. 
- Boru uzunlu??unu de??i??tiren ve "kulis" ad?? verilen bir s??rg??s?? vard??r. Bu s??rg?? trombonun farkl?? notalarda ses ????karabilmesini sa??lar.
- Trombonun tarih??esi 15. y??zy??la dayan??r. 
- Enstr??man trombetin de??i??imi sonucu Burgonya'da meydana gelir. 
- 1700'l?? y??llara kadar saqueboute olarak adland??r??l??r. Saqueboute eski bir Frans??zca s??zc??k olup kelime manas?? ??ek-it' tir.
- Trombonun iki t??r?? vard??r. Bunlar pistonlu trombon ve s??rg??l?? trombondur. 
- Pistonlu trombon tenor ve bas olarak iki gruba ayr??l??r. Si bemol veya do sesine g??re yap??lm???? olan pistonlu trombonda do ve fa anahtarlar?? kullan??lmaktad??r. Piston mekanizmas?? ???? ses b??lgesini kapsayacak bi??imde bulunmaktad??r. Kal??n b??lgenin ses renginin bo??uk olmas?? hasebiyle p??r??zs??z ses ????karmak g????t??r. En rahat ses ??alg??n??n ikinci ses aral?????? olan orta b??lgeden ????kar. ??????nc?? b??l??m ise tiz oldu??undan ??t??r?? seslerin ????karmas?? zordur. 
- S??rg??l?? trombon de tenor ve bas olarak iki gruba ayr??l??r. S??rg??l?? trombon yap??sal olarak pistonlu trombona ile benzerlik g??stermektedir. Bu ??alg??da piston yerini kulis ad??yla an??lan s??rg??l?? bir k??sm??na b??rak??r. Enstr??mandan ses elde etmek i??i s??rg??n??n a????l??p kapanmas?? gerekmektedir.
- Bak??r ??flemeli bir ??alg?? olan trombon orkestralarda, bando ve m??z??kalarda kullan??lan enstr??manlar aras??ndad??r. 
- Enstr??man??n geni?? ses olana???? vard??r. 
- Son y??llarda caz m??zi??i gruplar??nda solo olarak kullan??labilen ??nemli say??labilecek bir enstr??mand??r.

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
