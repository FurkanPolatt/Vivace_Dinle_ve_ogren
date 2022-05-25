import 'package:flutter/material.dart';

import 'common/route_generator.dart';
import 'stores/quiz_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await QuizStore.initPrefs();
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quiz App',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
