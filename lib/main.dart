import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:musicedu_app/loading_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Vivace());
}

class Vivace extends StatelessWidget {
  const Vivace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: const LoadingPage());
  }
}
