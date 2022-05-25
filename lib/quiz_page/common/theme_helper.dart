import 'package:flutter/material.dart';

class ThemeHelper {
  static Color primaryColor = Color(0xff6758C0);
  static Color accentColor = Color(0xff20aebe);
  static Color shadowColor = Color(0xffa2a6af);

  static BoxDecoration fullScreenBgBoxDecoration(
      {String backgroundAssetImage = "assets/images/Common.bg.png"}) {
    return BoxDecoration(
      image: DecorationImage(
          image: AssetImage(backgroundAssetImage), fit: BoxFit.cover),
    );
  }

  static roundBoxDeco({Color color = Colors.white, double radius = 15}) {
    return BoxDecoration(
        color: color, borderRadius: BorderRadius.all(Radius.circular(radius)));
  }
}
