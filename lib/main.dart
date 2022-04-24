import 'package:flutter/material.dart';
import 'package:musicedu_app/loading_screen.dart';

void main() {
  runApp(const MusicMachine());
}

class MusicMachine extends StatelessWidget {
  const MusicMachine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: const LoadingPage());
  }
}
