// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElectroPInfo1 extends StatefulWidget {
  const ElectroPInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<ElectroPInfo1> {
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
            'Elektronik Piyano',
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
              image: AssetImage('assets/background/epiano.jpg'),
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
                        '''- Teknolojinin gelişmesiyle birlikte müzikte de hayatı kolaylaştırmaya yönelik çözümler üretilmiştir. Bu çözümlerden bazıları, akustik piyanoları daha küçük bir hale getirmek ve sesini kontrol altına alabilmek olmuştur. Meraklı, araştırmacı ve ısrarcı yaklaşımlar en sonunda 1980’lerin sonlarında dijital piyanoları üretmeyi başarmıştır. 
- Akustik piyano yapısı itibarıyla çekiçlerin tele vurmasıyla ortaya çıkan mekanik bir sestir ancak dijital piyanolar da adından belli olduğu üzere daha elektronik sistemin kolaylıklarından yararlanarak elde eder. Bu konuda en dikkat edilen unsur dijital piyanoların tuşe konusunda yetersiz kalmasıydı ama son birkaç yılda büyük piyano markalarının da el atmasıyla birlikte bu farklılık büyük oranda azaltılmıştır. 
- Yine akustik piyanolarda kullanılan çekiç sistemi (hammer-action) dijital piyanolarda da kullanılmakta ve çoğu dijital piyano modelinde gerçek tel gerginliği hissiyatını vermektedir.
- Birçok ses barındırdığı için kullanım alanı geniş olan elektronik piyano, genel olarak birçok müzik türünde kullanılır.
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
