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
                        '''- Org, ismini Latince ???Organum???dan al??r. 
- ??lk yap??m?? ??ok eski y??zy??llara uzan??p (M.??. 150-200 y??llar??nda) M??s??r da Ktesibios ad??nda birinin ilk su orgunu yapt?????? s??ylenir. 
- 18.ci yy a kadar ???? tip org varl??????n?? s??rd??rd??: Portatif Org, Pozitif Org, B??y??k Org. 
- Klasik org, Avrupal?? yap??c??lar elinde geli??erek 14. y??zy??l sonlar??nda bug??nk?? durumuna geldi.
- Laurens Hammond??? un elektrikli orgu yapmas??yla birlikte en kullan????l?? bi??imine ula??m????t??r. ??lk kez 1934???te ABD???de yap??lan elektronik orgda borular ve hava mekanizmas?? bulunmaz; sesler elektronik olarak ??retilir.
- Orgda ses, k??r??kle verilen havan??n tahta veya metal borulardan ge??erken ??flemeli ??alg??larda oldu??u gibi i??erdeki hava s??tunlar??n?? titre??tirmesiyle elde edilir. 
- Klavyeli ve pedall?? bir enstr??mand??r. De??i??ik ses tonlar?? ve notalar piyanoda oldu??u gibi tu??larla denetlenir. En ??ok bilinen t??r?? kilise orgudur.
- ??lk olarak tiyatrolarda ve sirklerde kullan??lan ve dind?????? m??zik ??alg??s?? olan org; Roma ??mparatorlu??u d??neminde b??t??n Bat?? d??nyas??na yay??ld??. 10. y??zy??ldan ba??layarak, ??ok sesli yap??tlar??n ??o??almas??yla da birlikte dind?????? m??zik alan??ndan kilise m??zi??i alan??na kayd??. Uzun s??re kilise m??zi??inde kullan??lan bu ??alg??, sonralar?? dind?????? m??zi??in de en yetkin ??alg??lar?? i??inde yer alm????t??r. 
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
