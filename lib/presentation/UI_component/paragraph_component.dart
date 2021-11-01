import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:prepreocessor_starter/core/color_coverter.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/core/launch_url.dart';
import 'package:prepreocessor_starter/domain/models/paragraph.dart';

class ParagraphWidget extends StatelessWidget {
  final Paragraph paragraph;

  const ParagraphWidget({Key key, this.paragraph}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return Text(
    //     paragraph.text,
    //     style: getParagraphTextStyle(paragraph),
    //   );
    return Html(
        data: paragraph.text.startsWith('<')
            ? paragraph.text
            : '<p>${paragraph.text}</p>',
        style: {'p': Style.fromTextStyle(getParagraphTextStyle(paragraph))},
        onLinkTap: (String url, RenderContext c,
            Map<String, String> attributes, _) {
              launchURL(url);
        });
  }
}

TextStyle getParagraphTextStyle(Paragraph paragraph) {
  Color color = paragraph.color != null
      ? colorConvert(paragraph.color)
      : kDefaultTextColor;
  double size = paragraph.size ?? 15;
  return TextStyle(
      wordSpacing: 1.005, letterSpacing: 1.005, color: color, fontSize: size);
}
