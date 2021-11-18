import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/domain/models/code.dart';
import 'package:prepreocessor_starter/domain/models/delimiter.dart';
import 'package:prepreocessor_starter/domain/models/header.dart';
import 'package:prepreocessor_starter/domain/models/image.dart';
import 'package:prepreocessor_starter/domain/models/link.dart';
import 'package:prepreocessor_starter/domain/models/list.dart';
import 'package:prepreocessor_starter/domain/models/paragraph.dart';
import 'package:prepreocessor_starter/core/color_coverter.dart';
import 'package:prepreocessor_starter/domain/models/quote.dart';
import 'package:prepreocessor_starter/domain/models/raw_html.dart';
import 'package:prepreocessor_starter/domain/models/table.dart';
import 'package:prepreocessor_starter/domain/models/video.dart';
import 'package:prepreocessor_starter/presentation/UI_component/code_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/delimiter_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/embeded_video_player_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/header_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/image_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/link_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/list_widget.dart';
import 'package:prepreocessor_starter/presentation/UI_component/paragraph_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/quote_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/raw_html_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/table_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/youtube_video_player_component.dart.dart';

import '../base_widget.dart';

class WidgetGenerator {
  static Widget generateWidgetFrom(BaseWidgetModel data) {
    if (data is Header) {
      return HeaderWidget(header: data);
    } else if (data is Paragraph) {
      print('data => $data');
      return ParagraphWidget(
        paragraph: data,
      );
    } else if (data is Delimiter) {
      return DelimiterWidget(
        delimiter: data,
      );
    } else if (data is ImageModel) {
      print('data => $data');
      return ImageWidget(
        image: data,
      );
    } else if (data is CodeModel) {
      print('data => $data');
      return CodeWidget(
        code: data,
      );
    } else if (data is QuoteModel) {
      print('data => $data');
      return QuoteWidget(
        quote: data,
      );
    } else if (data is LinkModel) {
      print('data => $data');
      return LinkWidget(
        link: data,
      );
    } else if (data is RawHtmlModel) {
      print('data => $data');
      return RawHTMLWidget(
        html: data,
      );
    } else if (data is ListModel) {
      print('data => $data');
      return ListWidget(
        list: data,
      );
    } else if (data is TableModel) {
      print('data => $data');
      return TableWidget(
        table: data,
      );
    } else if (data is VideoModel) {
      print('data => $data');
      if (data.from == 'youtube') {
        return YoutubeVideoWidget(
          video: data,
        );
      }
      else{
        return EmbeddedVideoPlayer(video: data,);
      }
    }
    return Container();
  }
}

TextStyle getParagraphTextStyle(Paragraph paragraph) {
  Color color = paragraph.color != null
      ? colorConvert(paragraph.color)
      : Colors.grey[800];
  double size = paragraph.size ?? 16;
  return TextStyle(
      wordSpacing: 1.005, letterSpacing: 1.005, color: color, fontSize: size);
}
