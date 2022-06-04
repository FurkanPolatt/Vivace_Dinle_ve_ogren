// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrgInfo1 extends StatefulWidget {
  const OrgInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<OrgInfo1> {
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
            'Org',
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
              image: AssetImage('assets/background/org.jpg'),
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
                        '''- Org, ismini Latince “Organum”dan alır. 
- İlk yapımı çok eski yüzyıllara uzanıp (M.Ö. 150-200 yıllarında) Mısır da Ktesibios adında birinin ilk su orgunu yaptığı söylenir. 
- 18.ci yy a kadar üç tip org varlığını sürdürdü: Portatif Org, Pozitif Org, Büyük Org. 
- Klasik org, Avrupalı yapıcılar elinde gelişerek 14. yüzyıl sonlarında bugünkü durumuna geldi.
- Laurens Hammond’ un elektrikli orgu yapmasıyla birlikte en kullanışlı biçimine ulaşmıştır. İlk kez 1934’te ABD’de yapılan elektronik orgda borular ve hava mekanizması bulunmaz; sesler elektronik olarak üretilir.
- Orgda ses, körükle verilen havanın tahta veya metal borulardan geçerken üflemeli çalgılarda olduğu gibi içerdeki hava sütunlarını titreştirmesiyle elde edilir. 
- Klavyeli ve pedallı bir enstrümandır. Değişik ses tonları ve notalar piyanoda olduğu gibi tuşlarla denetlenir. En çok bilinen türü kilise orgudur.
- İlk olarak tiyatrolarda ve sirklerde kullanılan ve dindışı müzik çalgısı olan org; Roma İmparatorluğu döneminde bütün Batı dünyasına yayıldı. 10. yüzyıldan başlayarak, çok sesli yapıtların çoğalmasıyla da birlikte dindışı müzik alanından kilise müziği alanına kaydı. Uzun süre kilise müziğinde kullanılan bu çalgı, sonraları dindışı müziğin de en yetkin çalgıları içinde yer almıştır. 
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
