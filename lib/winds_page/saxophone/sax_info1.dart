// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SaxInfo1 extends StatefulWidget {
  const SaxInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<SaxInfo1> {
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
            'Saksafon',
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
      padding: const EdgeInsets.all(8),
      height: _boxHeight,
      margin: EdgeInsets.only(top: _boxHeight / 5),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            image: DecorationImage(
              image: AssetImage('assets/background/sax.jpg'),
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
                        '''- Saksafon çoğunlukla pirinçten yapılan, koni ve “S” biçiminde olan, ağızındaki kamışla ses çıkaran bir çalgıdır.
- Saksafon genellikle Pop-müziği, “big band” müziği ve caz ile ilişkilendirilse de, önceleri klasik batı müziği ve ordu müziği çalgısı olarak tasarlanmıştır.
- Hem ellerin hem de hem de ağzın kullanılarak çalındığı bir müzik aletidir. 
- Saksafon çalınırken, sol el üstte ve sağ el alttadır. Başparmak arka kısımdan destek alır. Bu şekilde saksafon sabit bir hale getirilerek, nefes ve nota uyumuyla çalınır.
- Adolphe Sax, saksafonu oluşturmaya başladığında ana fikri ya da amacı, pirincin gücünü ve bir tahta rüzgârlığın ton kalitesini içerecek bir araç yapmaktır. Temelde hem pirinç hem de nefesli çalgıların senfonik seslerini bir araya getirmek istemiştir. Bu hedefi göz önünde bulundurarak büyük bir saksafon, çok belirgin bir konik şekle sahip olan ilk eseridir ve bu esere 20 Mart 1864 tarihinde saksafon denmiştir.
- Küçükten büyüğe saksafon türleri ve sıralanışı şu şekildedir; Sopranino, C Soprano, Soprano, F Mezzo Soprano, Alto, C – Ezgi, Tenor, Bariton,Soprano, Bas, Kontrbas, Subkontrbas. 
- Günümüzde en çok alto, bariton, tenor saksafon kullanılır.
- Saksafon genelde caz müzikte kullanımı yaygındır.
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
