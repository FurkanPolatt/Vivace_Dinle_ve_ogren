// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassicInfo1 extends StatefulWidget {
  const ClassicInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<ClassicInfo1> {
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
            'Klasik Gitar',
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
              image: AssetImage('assets/background/classic_guitar.jpg'),
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
          height: 500,
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
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '''- Modern klasik gitar, 1850'li y??llarda ??spanyol usta Antonio Torres sayesinde g??n??m??zdeki ??eklini ald??.
- Gitar??n g??vdesinin ortas??nda ses deli??i denilen yuvarlak bir bo??luk bulunur. 
- Gitar??n telleri titre??ti??inde g??vdenin i??inde bulunan hava titre??ir ve tek ????k???? noktas?? olan bu yuvarlak bo??luktan d????ar?? ses olarak geri ????kar. 
- Toplam 6 tel vard??r: 3????? kal??n tel ??elikten ve kalan 3????? de ince tel naylondan yap??lm????t??r.
- Genellikle parmak ile ??al??n??r.
- Sa?? elini kullanan m??zisyenler tellere vurmak i??in sa?? elin parmaklar??n?? kullan??r, ba??parmak telin tepesinden a??a????ya do??ru (a??a???? vuru??) ve di??er parmaklar telin alt??ndan yukar??ya do??ru (yukar?? vuru??) vurulur.
- Genelde klasik ve flamenko tarz?? m??ziklerde kullan??l??r.
Parmak G??sterimi:
P: Ba??parmak
??: ????aret parma????
M: Orta parmak
A: Y??z??k parma????
X: Sa?? elin ser??e parma????
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
