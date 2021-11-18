import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';

Widget customButton(String text,
    {Color color = kGreyColor,
    Color backgroundColor = Colors.white,
    Function onTap,
    Color borderColor = Colors.white,
    double width,
    double height}) {
  return GestureDetector(
    onTap: onTap ?? () {},
    child: Container(
      height: height ?? 55,
      width: width ?? 300,
      // padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border:  borderColor != null ? Border.all(color: borderColor ?? Colors.transparent, width: borderColor != null ? 2 : 0) : null,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        text,
        style:
            TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 14),
      )),
    ),
  );
}
