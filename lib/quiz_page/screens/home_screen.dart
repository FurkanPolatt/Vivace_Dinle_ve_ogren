import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicedu_app/home_page.dart';

import '../common/theme_helper.dart';
import '../stores/quiz_store.dart';
import '../widgets/disco_button.dart';
import 'quiz_category.dart';
import 'quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final QuizStore _quizStore = QuizStore();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: navigationDrawer(),
        body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splash_background.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              drawerToggleButton(),
              Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  headerText('Kendini Test Et'),
                  SizedBox(height: 55),
                  ...homeScreenButtons(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Drawer navigationDrawer() {
    return Drawer(
      child: Container(
        color: Color(0xff1c2c4c),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Material(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              child: DrawerHeader(
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Kendini Test Et",
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Ana Sayfa',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
            ),
            ListTile(
              title: const Text(
                'Teste Başla',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onTap: () async {
                var quiz = await _quizStore.getRandomQuizAsync();
                Navigator.pushNamed(context, "/quiz", arguments: quiz);
              },
            ),
            ListTile(
              title: const Text(
                'Test Kategorileri',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onTap: () {
                Navigator.pushNamed(context, QuizCategoryScreen.routeName);
              },
            ),
            Divider(
              color: Colors.white70,
              thickness: 1,
            ),
            ListTile(
              title: const Text(
                'Çıkış',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return HomePage();
                    },
                  ),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerToggleButton() {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20),
      alignment: Alignment.topLeft,
      child: GestureDetector(
        child: Image(
          image: AssetImage("assets/icons/menu.png"),
          width: 27,
        ),
        onTap: () {
          _key.currentState!.openDrawer();
        },
      ),
    );
  }

  Text headerText(String text) {
    return Text(
      text,
      style: GoogleFonts.pacifico(fontSize: 50, color: Colors.white, shadows: [
        Shadow(
            color: ThemeHelper.shadowColor,
            offset: Offset(-3, 3),
            blurRadius: 10)
      ]),
    );
  }

  List<Widget> homeScreenButtons(BuildContext context) {
    return [
      DiscoButton(
        onPressed: () async {
          var quiz = await _quizStore.getRandomQuizAsync();
          Navigator.pushNamed(context, QuizScreen.routeName, arguments: quiz);
        },
        child: Text(
          "Teste Başla",
          style: GoogleFonts.pacifico(
            fontSize: 32,
          ),
        ),
        isActive: true,
      ),
      SizedBox(
        height: 35,
      ),
      DiscoButton(
        onPressed: () {
          Navigator.pushNamed(context, QuizCategoryScreen.routeName);
        },
        child: Text(
          "Test Kategorileri",
          style: GoogleFonts.pacifico(
            fontSize: 30,
          ),
        ),
        isActive: true,
      ),
      // DiscoButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, QuizHistoryScreen.routeName);
      //   },
      //   child: Text(
      //     "Test Geçmişi",
      //     style: GoogleFonts.pacifico(
      //       fontSize: 30,
      //     ),
      //   ),
      //   isActive: true,
      // ),
    ];
  }
}
