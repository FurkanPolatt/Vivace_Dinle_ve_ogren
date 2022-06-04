// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TromboneInfo1 extends StatefulWidget {
  const TromboneInfo1({Key? key}) : super(key: key);

  @override
  ClassicPageState createState() {
    return ClassicPageState();
  }
}

class ClassicPageState extends State<TromboneInfo1> {
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
            'Trombon',
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
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: _boxHeight,
        margin: EdgeInsets.only(top: _boxHeight / 5),
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              image: DecorationImage(
                image: AssetImage('assets/background/trmbn.jpg'),
                fit: BoxFit.cover,
              ),
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
                        '''- Trombon, üflemeli ve bakır nefesli çalgılar grubunda bulunan bir çalgı çeşididir. 
- Fincan biçimli bir ağızlığa dayanan dudakların titreşmesiyle ses çıkarmaktadır. 
- Boru uzunluğunu değiştiren ve "kulis" adı verilen bir sürgüsü vardır. Bu sürgü trombonun farklı notalarda ses çıkarabilmesini sağlar.
- Trombonun tarihçesi 15. yüzyıla dayanır. 
- Enstrüman trombetin değişimi sonucu Burgonya'da meydana gelir. 
- 1700'lü yıllara kadar saqueboute olarak adlandırılır. Saqueboute eski bir Fransızca sözcük olup kelime manası çek-it' tir.
- Trombonun iki türü vardır. Bunlar pistonlu trombon ve sürgülü trombondur. 
- Pistonlu trombon tenor ve bas olarak iki gruba ayrılır. Si bemol veya do sesine göre yapılmış olan pistonlu trombonda do ve fa anahtarları kullanılmaktadır. Piston mekanizması üç ses bölgesini kapsayacak biçimde bulunmaktadır. Kalın bölgenin ses renginin boğuk olması hasebiyle pürüzsüz ses çıkarmak güçtür. En rahat ses çalgının ikinci ses aralığı olan orta bölgeden çıkar. Üçüncü bölüm ise tiz olduğundan ötürü seslerin çıkarması zordur. 
- Sürgülü trombon de tenor ve bas olarak iki gruba ayrılır. Sürgülü trombon yapısal olarak pistonlu trombona ile benzerlik göstermektedir. Bu çalgıda piston yerini kulis adıyla anılan sürgülü bir kısmına bırakır. Enstrümandan ses elde etmek içi sürgünün açılıp kapanması gerekmektedir.
- Bakır üflemeli bir çalgı olan trombon orkestralarda, bando ve mızıkalarda kullanılan enstrümanlar arasındadır. 
- Enstrümanın geniş ses olanağı vardır. 
- Son yıllarda caz müziği gruplarında solo olarak kullanılabilen önemli sayılabilecek bir enstrümandır.

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
