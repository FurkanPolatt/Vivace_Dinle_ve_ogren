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
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '''- Darbuka veya d??mbelek, ??zellikle Orta Do??u'da ve Balkanlarda kullan??lan vurmal?? bir ??alg??d??r.
- T??rk musikisinde usul tutmaya yarayan bir alettir. 
- ??ki taraf?? da a????k bir ????mle??in bir taraf??na deri kaplayarak yap??l??r. 
- Parmaklarla vurularak ??al??n??r.
- Milattan ??nceki d??nemde g??n??m??z darbukas??na benzer ??alg??lar, ??e??itli bi??im ve b??y??kl??klerde Anadolu, Mezopotamya ve Orta Asya uygarl??klar??nda kullan??lm????lard??r. Daha sonraki s??re??ler i??inde de??i??ip geli??erek yine ayn?? co??rafyalar i??inde kullan??lm????t??r.
- ????mlekten yap??lanlar??na bug??n ??d??mbelek?? denmektedir. Darbuka s??z?? ise tenekeden yap??lanlar i??in kullan??r. 
- Anadolu???da daha ??ok kad??nlar taraf??ndan d??????nlerde ve ??zellikle kendi aralar??nda d??zenledikleri e??lencelerde kullan??l??r. Halk aras??nda ??????d??mbelek, d??mbek, c??mlek, k??p?????? gibi adlarla ??al??nan sazlardan fazla farkl?? olmay??p, sadece g??vde k??sm?? a??a?? ve ya metalden yapilip derisi ise vidalar yard??m?? ile gerdirilen bir vurgulu sazd??r. 
- D??mbelekte oldu??u gibi parmak u??lar??yla diz ??zerinde vurularak ??al??n??r.	
- T??rk sanat ve T??rk halk m??zi??inde ??al??nmaktad??r.
  
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
