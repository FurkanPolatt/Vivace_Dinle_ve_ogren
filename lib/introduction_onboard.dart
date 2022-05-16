import 'package:flutter/material.dart';
import 'package:musicedu_app/intro_screens/intro_page1.dart';
import 'package:musicedu_app/intro_screens/intro_page2.dart';
import 'package:musicedu_app/intro_screens/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login_page/main_page.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  void initState() {
    super.initState();
    // checkScreen();
  }

  // Future checkScreen() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   bool _introSeen = (prefs.getBool('intro_seen') ?? false);
  //
  //   Navigator.pop(context);
  //   if (_introSeen) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => HomePage(),
  //       ),
  //     );
  //   } else {
  //     await prefs.setBool('intro_seen', true);
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => IntroductionPage(),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Text('Geç',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ColorTransitionEffect(
                    activeDotColor: Colors.white,
                    dotColor: Colors.white38,
                  ),
                ),
                onLastPage
                    ? GestureDetector(
                        child: Text('Bitir',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white)),
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return MainPage();
                              },
                            ),
                            (route) => false,
                          );
                        },
                      )
                    : GestureDetector(
                        child: Text('İleri',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
