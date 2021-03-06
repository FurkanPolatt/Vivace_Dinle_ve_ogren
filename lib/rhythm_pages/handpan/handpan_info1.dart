// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HandpanInfo1 extends StatefulWidget {
  const HandpanInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<HandpanInfo1> {
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
            'Handpan',
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
              image: AssetImage('assets/background/handpan2.jpg'),
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
                        '''- Hang (drum) olarak bilenen daha sonra el yap??m?? olup ve daha anla????l??r olmas?? i??in hang yerine handpan ad?? verilen bir ??e??it perk??syon enstr??mand??r.
- Karayip enstr??man?? Steelpan???in kuzeni s??n??fland??r??lan ve ???Hipnotik Enstr??man??? olarak nitelendirilen hang, Bern dilinde ve Macarca???da el anlam??na geliyor.
- ??lk kez 1989 y??l??nda, Felix Rohner, Macaristan turunda icat etmi??tir. 
- Steelband olarak adland??rd?????? perk??syon aletini 1 y??l kadar g??ne??in alt??nda bekletmi??, onun deyimiyle ya??lanm???? varilden yapm????t??r. Harika s??cak bir ses elde etti??i ilk Steelband, fabrikadan ????kan yeni bir varilden ??ok daha iyi bir sese sahiptir. Bunun fark edilmesi yapay ya??lanm???? metaller olan pang kompozit markas??n??n olu??umunda uzun s??ren ara??t??rma s??recinin ba??lang??c?? olmu??tur. B??ylece hang veya handpan yayg??nla??maya ba??lam????t??r.
- G??r??n?????? kaplumba??a kabu??unu and??ran perk??syon aleti, ??elikten ??retilir. 
- Kucakta ya da yere konularak el ve parmaklarla ??al??n??r. 
- Sesini hi?? duymayanlar i??in benzetme yapmak gerekirse arp, gong ya da yere d????en g??zleme sac??n?? and??ran bir sesi var. 
- Y??zeydeki 7 ??ukura vurarak titre??im yoluyla sesler elde edilir. Sesler diyoruz ????nk?? notalar konusunda belirsizlik var. 
- Bug??ne kadar hang???in boy boy 45???ten fazla modeli geli??tirildi. Ancak ??alma konusunda bir kural ya da okullarda ????retilen bir y??ntemi hen??z yok. Yine de bir mant?????? var: 35 nota d??zeninde tasarlanan Hang????? sat??n al??rken yaln??zca bir notay?? se??ebiliyorsunuz, ??rne??in fa diyez hang. Ancak bu enstr??manda d??????k bas tonlar?? ??almak kimilerine g??re imk??ns??z.
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
