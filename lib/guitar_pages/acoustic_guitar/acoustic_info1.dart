// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcousticInfo1 extends StatefulWidget {
  const AcousticInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<AcousticInfo1> {
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
            'Akustik Gitar',
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
            // _buildCircleIndicator(),
          ],
        ),
        _buildPageView2(),
      ],
    );
  }

  _buildPageView() {
    return Container(
      padding: EdgeInsets.all(5),
      height: _boxHeight,
      margin: EdgeInsets.only(top: _boxHeight / 5),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            image: DecorationImage(
              image: AssetImage('assets/background/acoustic_guitar.jpg'),
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
                    fontSize: 25,
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
                        '''- ??spanyol usta Torre ve Amerika??? ya g????en Alman g????menler X-balkonlama ile gitar yapmaya ba??lad??lar. 
- 1900 lerde ??elik tel geni?? ??apta ula????labilir oldu ve bu da akustik gitar??n icad?? i??in bir yol a??t??. 
- G??r??n???? olarak klasik gitara benzer.
- Akustik gitar??n g??vdesi, klasik gitardan biraz daha ??i??man ve bas??kt??r.
- Akustik gitar, klasik gitara g??re daha dar bir sapa sahiptir
- Genellikle 4 teli sar??ml?? ??elik ve di??er 2 teli ise sar??ms??z ??elikten olu??ur. 
- Akustik gitar ??al??n??rken pena kullan??labilir.
- Belli bir elektronik sisteme gerek duymaz. Klasik gitara oranla daha y??ksek, daha temiz ve sert ses ????karabilen bit gitar t??r??d??r.
- Rock, blues ve caz m??zik t??rlerinde ??ok kullan??lan bir gitar t??r??d??r.
- Ayn?? zamanda Pop m??zikte de ritmi sa??lamak i??in ??ok ??nemli bir enstr??mand??r. 
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
