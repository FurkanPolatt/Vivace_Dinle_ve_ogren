import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:musicedu_app/loading_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';
import 'loading_screen.dart';
import 'login_page/main_page.dart';

dynamic initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefences = await SharedPreferences.getInstance();
  initScreen = await prefences.getInt('initScreen');
  await prefences.setInt('initScreen', 1);
  await Firebase.initializeApp();
  runApp(const Vivace());
}

class Vivace extends StatelessWidget {
  const Vivace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: initScreen == 0 || initScreen == null ? 'onBoard' : 'home',
      routes: {
        'onBoard': (context) => LoadingPage(),
        'home': (context) => MainPage(),
      },
    );
  }
}
