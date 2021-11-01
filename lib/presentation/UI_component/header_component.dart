import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/color_coverter.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/domain/models/header.dart';

class HeaderWidget extends StatelessWidget {
  final Header header;

  const HeaderWidget({Key key, this.header}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        padding: EdgeInsets.only(left: 5),
        child: Text(
          header.text,
          style: getHeaderTextStyle(header),
        ));
  }
}

TextStyle getHeaderTextStyle(Header header) {
  Color color =
      header.color != null ? colorConvert(header.color) : kDefaultHeaderColor;
  double size = header.level != null ? header.level.toDouble() * 10 : 13.0;
  return TextStyle(color: color, fontSize: size, letterSpacing: 1.1);
}
