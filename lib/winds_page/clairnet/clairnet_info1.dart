// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClairnetInfo1 extends StatefulWidget {
  const ClairnetInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<ClairnetInfo1> {
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
            'Klarnet',
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
              image: AssetImage('assets/background/clairnet2.jpg'),
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
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        '''- Klarnet, sert ve dayanıklı ağaçlardan genellikle de abanoz ağacından yapılan üflemeli bir çalgı türüdür. 
- Klarnet çalabilmek için kamış ve kamışı beke sabitleyip düzgün frekanslarda titreşim oluşması için bileziğe ihtiyaç vardır. 
- Klarnetin bir arada durması için parçaların uç kısımlarında genellikle mantarlar bulunur. Bu parçaların tamamının birleştirilmiş haline klarnet denilmektedir. 
- Klarnetin içi silindirik yapıdadır. 
- Gövdesi üzerinde delikler, halkalar ve metal tuşlar bulunmaktadır. 
- Yapısı silindir bir boru şeklindedir ve alt kısmına indikçe hafifçe kalınlaşan bir kalakla son bulur. 
- Klarnet, tarihi 19. yüzyılda Chalumeau (Şalümo) adıyla orkestralarda icra edilen nefesli saz klarnetin atasıdır. Fransızca'dan gelen bu isim nefesli sazların genel adıdır. 
- Aynı yüzyılda Denner adlı çalgı yapım ustası Şalümo’yu geliştirerek bugünkü sisteme doğru ilk adımı atmıştır. 
- 18. yüzyılda keşfedilen enstrümanın orkestraya dâhil edilmesi 1750 yılında olmuştur.
- 1800’lü yıllarda klarnetin oda orkestralarında yaygınlaşmasında Mozart’ın rolünün büyük olduğu bilinmektedir. 
- Klarnet temel olarak 5 parçanın birleşiminden oluşmaktadır. Bunlar: Bek (Ağızlık), Baril (Fıçı veya barel), Üst Gövde, Alt Gövde (Şalümo), Kalak (Pavillon) Klarnet kalabalık bir aileye sahiptir. 
- Çeşitleri şunlardır; Sol Klarnet (G), Mi Bemol Klarnet (Eb), Bas Klarnet , La Klarnet (A) , Do Klarnet, Si Bemol Klarnet (Bb), Alto Klarnet (Mi Bemol), Kontrabas Klarnet, La Bemol Klarnettir. 
- Türkiye’de en yayın olarak kullanılan çeşidi ise sol (G) klarnettir. 
- Tüm klarnet çeşitlerinde parmak pozisyonlarının isimleri ve parmak pozisyonları kullanımını gösteren işaretler aynı olduğu gibi, ses sahalarının gösterilişi ve nota yazımları da aynıdır. Sadece duyulan sesin piyanodaki karşılığına göre klarnetler isimlendirilir ve transpozisyon yapılarak seslendirme yapılır. 
- Birbirinden farklı birçok müzik türünde kullanılan klarnet; caz müzikten arabesk müziğe kadar, klasik müzik, Türk müziği, Batı müziği gibi müzik türlerinde kullanılabilen bir müzik aletidir.

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
