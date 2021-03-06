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
                        '''- Melodika, ??flemeli ve tu??lu bir m??zik enstr??man??d??r. 
- Bu enstr??man a????zla ??flenir ve tu??lara bas??larak ses ????kar??l??r. 
- Fl??te benzer ama tek bir tu??a bas??nca o nota ????kar.
- Melodikada her tu?? bir notaya kar????l??k gelmektedir.
- Notalar ???fa??? ile ba??lar ve ???do??? ile biter. 
- Parmaklar numaraland??r??l??r ve ba?? parmak 1, i??aret parma???? 2, orta parmak 3, y??z??k parma???? 4, ser??e parma???? da 5 olarak adland??r??l??r.
- Tu?? adetine g??re adland??r??lm???? 2 t??r melodika bulunmaktad??r:
1.	13 tu??lu melodika

- En basit melodika ??e??ididir. Blok fl??te en ??ok benzeyen t??r olup ??alan ki??inin enstr??man?? elinde tutmas?? gerekir. 13 tu??lu melodikalar hortumla ??al??namazlar.

2.	- 25, 32 veya 37 tu??lu melodika
- Birbirinden fark?? sadece tu?? say??s?? olan bu ???? tip melodikalar??n ??zelli??i 13 tu??luya g??re daha fazla farkl?? sesin ????kar??labilmesi ve d??z bir zemine konulup hortum ile ??flenerek ??al??nabilmesidir. ??o??unlukla ??fleme hortumu ile birlikte sat??lmaktad??r.
- Yeni ba??layanlar uzun hortumuyla kullan??rlar. 
- Sol elle tutulur ve sa?? elle ??zerindeki (piyano tu??lar?? gibi) tu??lar??na bas??larak ??al??n??r. 
- Arkas??nda tutacak sap?? bulunur.

- M??zik e??itimi i??in ideal bir ??alg??d??r. Melodika genelde ilk????retim okullar??nda e??itim ama??l?? olarak m??zik derslerinde ??al??nmaktad??r. 

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
