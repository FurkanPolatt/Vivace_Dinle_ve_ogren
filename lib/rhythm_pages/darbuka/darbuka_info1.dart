// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarbukaInfo1 extends StatefulWidget {
  const DarbukaInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<DarbukaInfo1> {
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
            'Darbuka',
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
              image: AssetImage('assets/background/darbuka2.jpg'),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''- Darbuka veya dümbelek, özellikle Orta Doğu'da ve Balkanlarda kullanılan vurmalı bir çalgıdır.
- Türk musikisinde usul tutmaya yarayan bir alettir. 
- İki tarafı da açık bir çömleğin bir tarafına deri kaplayarak yapılır. 
- Parmaklarla vurularak çalınır.
- Milattan önceki dönemde günümüz darbukasına benzer çalgılar, çeşitli biçim ve büyüklüklerde Anadolu, Mezopotamya ve Orta Asya uygarlıklarında kullanılmışlardır. Daha sonraki süreçler içinde değişip gelişerek yine aynı coğrafyalar içinde kullanılmıştır.
- Çömlekten yapılanlarına bugün «dümbelek» denmektedir. Darbuka sözü ise tenekeden yapılanlar için kullanır. 
- Anadolu’da daha çok kadınlar tarafından düğünlerde ve özellikle kendi aralarında düzenledikleri eğlencelerde kullanılır. Halk arasında ‘’dümbelek, dümbek, cümlek, küp’’ gibi adlarla çalınan sazlardan fazla farklı olmayıp, sadece gövde kısmı ağaç ve ya metalden yapilip derisi ise vidalar yardımı ile gerdirilen bir vurgulu sazdır. 
- Dümbelekte olduğu gibi parmak uçlarıyla diz üzerinde vurularak çalınır.	
- Türk sanat ve Türk halk müziğinde çalınmaktadır.
  
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
