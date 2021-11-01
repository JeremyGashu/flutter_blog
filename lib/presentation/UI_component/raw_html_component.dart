import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/domain/models/raw_html.dart';

class RawHTMLWidget extends StatelessWidget {
  final RawHtmlModel html;

  const RawHTMLWidget({Key key, this.html}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildRawHTML(html),
    );
  }
}

Widget _buildRawHTML(RawHtmlModel html) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.grey.withOpacity(0.4), width: 0.7),
      color: html.backgroundColor ?? kDefaultRawHtmlBackground,
    ),
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    child: Text(
      html.html,
      style: TextStyle(
        letterSpacing: 1.05,
          fontSize: html.size ?? 12, color: html.color ?? kDefaultRawHtmlColor),
    ),
  );
}
