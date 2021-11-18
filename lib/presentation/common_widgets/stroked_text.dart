import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';

Widget textWithStroke(
    {String text,
    String fontFamily,
    double fontSize: 30,
    double strokeWidth: 2,
    Color textColor: kGreyColor,
    Color strokeColor: Colors.white}) {
  return Stack(
    children: <Widget>[
      Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = strokeWidth
            ..color = strokeColor,
        ),
      ),
      Text(text,
          style: TextStyle(
              fontFamily: fontFamily, fontSize: fontSize, color: textColor)),
    ],
  );
}