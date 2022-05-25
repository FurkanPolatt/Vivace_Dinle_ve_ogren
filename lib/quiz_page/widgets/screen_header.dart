import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHeader extends StatelessWidget {
  final String backBtnImagePath;
  final String headerText;

  const ScreenHeader(this.headerText,
      {Key? key, this.backBtnImagePath = "assets/icons/backarrow.png"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          GestureDetector(
            child: Image(
              image: AssetImage(backBtnImagePath),
              width: 40,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Text(
            headerText,
            style: GoogleFonts.pacifico(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
