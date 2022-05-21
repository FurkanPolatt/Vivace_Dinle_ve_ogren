import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:musicedu_app/loading_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'animationScreen.dart';
import 'loading_screen.dart';

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
  static const String onesignalAppId = "cd158d8d-106c-4d61-a0b6-9ddd4a5fff8c";
  const Vivace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initScreen == 0 || initScreen == null ? 'onBoard' : 'home',
      routes: {
        'onBoard': (context) => LoadingPage(),
        'home': (context) => AnimationPage(),
      },
    );
  }

  Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(onesignalAppId);
  }
}
