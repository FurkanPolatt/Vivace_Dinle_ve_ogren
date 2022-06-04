// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CajonInfo1 extends StatefulWidget {
  const CajonInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<CajonInfo1> {
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
            'Cajon',
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
              image: AssetImage('assets/background/cjn.jpg'),
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
                        '''- Cajón, başlangıçta Peru'dan gelen, ön veya arka yüzleri eller, parmaklar veya bazen fırçalar, tokmaklar veya çubuklar gibi aletlerle tokatlayarak çalınan kutu şeklinde bir vurmalı çalgıdır. 
- Cajones esas olarak Afro-Perulu müziğinde çalınır, ancak flamenkoya da girmiştir.
- Cajon, 18. yüzyılın sonlarından itibaren en fazla kullanılan Afrika-Peru kökenli müzik çalgısıdır. Amerika’daki müzik performanslarında yaygın olarak kullanılan bir çalgı olmasına rağmen, İç ve Batı Amerika’daki Afrika kökeninin, özellikle Peru’nun cajonların kaynağı olduğu düşünülmektedir.
- Cajonun beş yüzeyi için genellikle 1,3 cm’den 1,9 cm’e değişen kontra plaklar kullanılır. 
Diğer yüzey yani vurulan başlıca yüzey (tapa) için ise daha ince kontra plaklar kullanılır. 
- Vurulan bu başlıca yüzeyin (tapa) tam karşısında yani cajonun arka yüzeyinde ise bir ses deliği bulunur. 
- Üst kenarlar çoğu zaman serbest / birleşik olmayan şekilde bırakılır. 
- Çalgıcı, kutunun üzerine bacaklarını açarak oturur ve ona bir açıyla eğim verirken, bir yandan da dizlerinin arasından cajonun başlıca yüzeyine (tapa) vurur. 
- Modern cajonların kauçuk ayakları olabilmektedir ve üst tarafında vurmalı ses tınısını ayarlayıcı birkaç vidası vardır.
- Cajon en fazla Küba müziklerinde, Peru sahil müziklerinde ve (Afrikan-İspanyol-And Dağları müziklerinin etkisiyle oluşmuş) Musica Criolla denen müzik türlerinde duyulmaktadır: Tondero, Zamacueca ve Peru Walsi, modern Flamenko ve Rumba’nın bazı modern türlerinde cajon yaygın olarak kullanılır.
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
